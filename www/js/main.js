function tabCallBack() {};

$(function() {	//To be run when DOM is constructed
	var reloadTab = function() { $("#tabs").tabs("load",$("#tabs").tabs('option', 'selected')); };

	$("#tabs").tabs({
		fx: { opacity: 'toggle' }
		,show: function(event, ui){{ tabCallBack(); }}
		,ajaxOptions:
		{
			"error":function(XMLHttpRequest, textStatus, errorThrown) {showNetworkError(reloadTab);}
		  , "success": function(response) 
			{
				if (!response || response == "")
					showNetworkError(reloadTab);
			}
		}
	});
	getSessionInfo();

	//Binding
	$("#logout").click(function() {
		getData({"action":"logout"}, function(response)
		{
			$(".sessionData").text("");
			$("#notLoggedIn").show();
			$("#loggedIn").hide();
			$("#tabs").tabs("load",$("#tabs").tabs('option', 'selected'));
			$("#logout").text("Login");
		});
	})

	$('.ui-hover').hover(
		function() { $(this).addClass('ui-state-hover'); },
		function() { $(this).removeClass('ui-state-hover'); }
	); 

	$(".course_symbol").live("click", function() { displayPopupCourse($(this).text()) });

	$('.course_symbol').live('mouseover mouseout', function(event) {
	  if (event.type == 'mouseover') {
	    // do something on mouseover
		$(".course_symbol:contains(" + $(this).text() + ")").addClass("course_symbol_hover");
	  } else {
	    // do something on mouseout
		$(".course_symbol:contains(" + $(this).text() + ")").removeClass("course_symbol_hover");
	  }
	});

});



function getData(params, callback, options)
{	options = options || {};
	options.type = options.type || "get";
	selfRepeatCall = function() { getData(params, callback, options); }

	if (arguments.length > 3 && arguments.length < 2)
		return BSOD("Invalid call for getData, you need 2 params, you gave me " + arguments.length + "... Crashing!");

	if (!params.action)
		return BSOD("Well, someone called getData without an action parameter.. How do you want me to deal with php/Main.php??? We do try very hard not this to happen but still, it would be nice to let us know.. I would also like to say it's been logged and a Ninja is on its way to fix it but it's false..");

	$.ajax({"cache":"false", "type":options.type, "data":params, "dataType":"json", "url":"php/Main.php"
	, "success": function(response) 
	{
		if (!response)
			return showNetworkError(selfRepeatCall);
		if (response.error && response.error=="true")
		{	if (response.reason == "notLoggedIn")
				showLogin(selfRepeatCall);
			else if (response.msg == "HTTPS only")
			{
				document.location = document.location.href.replace("http://","https://").replace(":8080","");			
				BSOD("You must use HTTPS. Redirecting you to the HTTPS version.. Maybe your server doesn't support HTTPS? You can use force_https = false in Config.php");
			}	
			else
				BSOD('Unknown error occured.. Please try again. <hr>' + response.msg);
		}
		else
		{
			$("#loggedInAs").css({"visibility" : "visible"});
			callback(response);
		}
	}
	, "error":function(XMLHttpRequest, textStatus, errorThrown)
	{ 
		if (textStatus == "parsererror")	//Not a valid JSON object
			BSOD("Not a valid JSON object. " + XMLHttpRequest.responseText);
		else 
			showNetworkError(selfRepeatCall); 
	}
	
	});

}


function showNetworkError(callback)
{
	var modalNetworkError = $("#modalTimeout");	
	modalNetworkError.dialog({
	    modal:true,
	    resizable:false,
	    buttons: {
			Ok: function()
	        {
	            modalNetworkError.dialog('close');
	            callback();
			}		
	}})


	function connectionTest() {
		$.ajax({"cache":"false", "type":"get", "data":{rand:Math.random()}, "dataType":"json", "url":"connectionTest.html"
		, "success": function(response) 
		{	if (response && response.a == "true")
			{
			    modalNetworkError.dialog('close');
			    callback();	
			}
			else
				window.setTimeout(connectionTest, 500);
		}
		, "error": function() { window.setTimeout(connectionTest, 500); }
		});
	}
	
	connectionTest();
	
}
function showLogin(callback) 
{	var modalWindow = $("#modalLogin");
	modalWindow.dialog(
	{	//Options for .dialog()
		show:"puff",
		hide:"puff",
		modal: true,
		resizable:false, 
		buttons: {
			Ok: function() {
				authenticateLogin(modalWindow.find(".username").val(), modalWindow.find(".password").val(), function() 
				{
					modalWindow.dialog('close');
					$("#loggedInAs").css({"visibility" : "visible"});
					callback();
					getSessionInfo();
					modalWindow.find(".password").val("");
				});
			}
		}
	
	}).unbind("keypress").keypress(function(e) {
		if (e.which == 13)
		{	
			e.preventDefault();
			$(this).parent().find(".ui-button").click();
		}
	});
}

function authenticateLogin(username, password, callback)
{	//Pre-conditions, Login Window is opened!
	if (username=="robot")
		return BSOD('Does not commmpppuuuuttte!!<br><br><object width="480" height="385"><param name="movie" value="http://www.youtube.com/v/kBSOhODoch0&hl=en_US&fs=1&color1=0x3a3a3a&color2=0x999999&autoplay=1"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="http://www.youtube.com/v/kBSOhODoch0&hl=en_US&fs=1&color1=0x3a3a3a&color2=0x999999&autoplay=1" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="480" height="385"></embed></object>');
	getData({"action":"login","username":username, "password":password}, function(response) {
		if (response.loginError == "false")
		{
			$("#logout").text("Logout");
			callback();
		}	
		else
			alert(response.reason);
	}, {"type":"post"});

	//Post-conditions, session is opened on the server.
}

function BSOD(message)
{	message = message || "Does Not Compute!";
	$("body").empty().addClass("bsod").append("<br><br><span class='bsod neg'>FATAL ERROR</span><br><br><p class='bsod'>" + message +"</p>");
}


function getSessionInfo()
{
	getData({"action":"getSessionInfo"}, function(response) {
		if (response.username)
		{	//Case when user is logged in
			$("#notLoggedIn").hide();
			$("#loggedIn").show();
			$("#logout").text("Logout");
			parseResponseToFields(response, $("#loggedIn"));
		}
	});		

}
/**
 * parseResponseToField
 * This function takes all the data in data and tries to find an HTML container in fieldContainer to write this data to the screen. 
 * @param object data
 * @param jQuery object fieldContainer or selector expression
 * @return void
 */
function parseResponseToFields(data, fieldContainer, wrapAround)
{	
	wrapAround = wrapAround || {};
	if (data == null)
		return;
	fieldContainer = $(fieldContainer);
	$.each(data, function(fieldName, fieldValue)
	{	
		var cell = fieldContainer.find("." + fieldName).empty();

		if (!fieldValue)
			return;
		if (fieldValue.constructor != Array)
			fieldValue = [fieldValue];
			
		$.each(fieldValue, function(index, value)
		{
			if (wrapAround[fieldName])	//a WrapAround was provided! We expect HTML 
			{
					cell.append($(wrapAround[fieldName]).text(value));
			}
			else //Simple text only
			{
				cell.text(value);	
			}		
		})
	})

}

function parseTemplate(data, fieldContainer, wrapAround)
{	wrapAround = wrapAround || {};

	var template = fieldContainer;
	$.each(data, function(index, record)
	{
		var newItem = template.clone().removeClass("template");
		parseResponseToFields(record, newItem, wrapAround);
		template.before(newItem);
		newItem.data("record",record);
	});
	template.hide();
}

/**
 * getDistinct
 * This function takes an array of object as input and a key that all these objets must have
 * it groups them by key
 * @param data, an array of object
 * @param key, the key to group object against
 * @return an object with as many key as their is distinct values of key
 */
function getDistinct(data, key)
{
	var ans = {};
	$.each(data, function(index, record)
	{	var val = record[key];
		ans[val] = ans[val] || [];	
		ans[val].push(record);	
	});
	return ans;
}

function displayCourse(symbol)
{	
	$("#courseDisplay").find(".ui-widget-header").text(symbol);
	getData({"action":"getCourseInfo", "symbol":symbol}, function(response)
	{
		parseResponseToFields(response, $("#courseDisplay"));
	 	$("#courseDisplay").find(".prerequisites").empty().prepend(parsePrereq(response.prerequisites));	
	});
}

function displayPopupCourse(symbol)
{
	var modalWindow = $("#modalCourseDescription");
	
	getData({"action":"getCourseInfo", "symbol":symbol}, function(response)
	{
		parseResponseToFields(response, modalWindow);
		modalWindow.find(".prerequisites").empty().prepend(parsePrereq(response.prerequisites));	
		modalWindow.dialog(
		{	//Options for .dialog()
			show:"drop"
			,hide:"drop"
			,width:500
			,title:symbol
			,position:"center"
			,closeOnEscape: true
			,modal:true
		});
	
	});

}

// input: an array of Needs:"prereq".
// output: an HTML string that list all pre-req..
function parsePrereq(prereq)
{
	if (prereq.length == 0)
		return "None";

	return $.map(prereq, function(record, index)
	{
		return record.Needs.replace(/\[/g,"<span class='course_symbol fakeLink'>").replace(/\]/g,"</span>");
	}).join("");
}
