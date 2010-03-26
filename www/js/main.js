function tabCallBack() {};
	if (!isSecure())
		document.location = document.location.href.replace("http://","https://").replace(":8080","");

$(function() {	//To be run when DOM is constructed

	$("#tabs").tabs({
		fx: { opacity: 'toggle' },
		show: function(event, ui){{ tabCallBack(); }}
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
		});
	})

	$('.ui-hover').hover(
		function() { $(this).addClass('ui-state-hover'); },
		function() { $(this).removeClass('ui-state-hover'); }
	); 

	$(".course_symbol").live("click", function() { displayPopupCourse($(this).text()) });
});



function getData(params, callback, options)
{	options = options || {};
	options.type = options.type || "get";

	if (arguments.length > 3 && arguments.length < 2)
		return BSOD("Invalid call for getData, you need 2 params, you gave me " + arguments.length + "... Crashing!");

	if (!params.action)
		return BSOD("Well, someone called getData without an action parameter.. How do you want me to deal with php/Main.php??? We do try very hard not this to happen but still, it would be nice to let us know.. I would also like to say it's been logged and a Ninja is on its way to fix it but it's false..");

	$.ajax({"cache":"false", "type":options.type, "data":params, "dataType":"json", "url":"php/Main.php"
	, "success": function(response) 
	{
		if (!response)
			showNetworkError(params, callback);
		if (response.error && response.error=="true")
		{	if (response.reason == "notLoggedIn")
				showLogin(function() { getData(params, callback); });
			else
				BSOD('Unknown error occured.. Please try again');
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
			showNetworkError(params, callback); 
	}
	
	});

}


function showNetworkError(params, callback)
{
		var modalNetworkError = $("#modalTimeout");	
		modalNetworkError.dialog({
                    modal:true,
                    resizable:false,
                    buttons: {
			Ok: function()
                        {
                            getData(params, function() {
                                modalNetworkError.dialog('close');
                                callback();
                            })
			}		
		}})

}
function showLogin(callback) 
{	var modalWindow = $("#modalLogin");
	modalWindow.dialog(
	{	//Options for .dialog()
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
	
	});
}

function authenticateLogin(username, password, callback)
{	//Pre-conditions, Login Window is opened!
	if (username=="robot")
		return BSOD('Does not commmpppuuuuttte!!<br><br><object width="480" height="385"><param name="movie" value="http://www.youtube.com/v/kBSOhODoch0&hl=en_US&fs=1&color1=0x3a3a3a&color2=0x999999&autoplay=1"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="http://www.youtube.com/v/kBSOhODoch0&hl=en_US&fs=1&color1=0x3a3a3a&color2=0x999999&autoplay=1" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="480" height="385"></embed></object>');
	getData({"action":"login","username":username, "password":password}, function(response) {
		if (response.loginError == "false")
			callback();
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


function displayCourse(ui)
{	var course = {"code":"COMP 238", "prerequisites": ["COMP 242","COMP 243"], "name":"Math for Computer Sciences I", "description":"Computer Science is the foundation of all computer technologies concerned with receiving, storing, processing, sharing and delivering information. At Concordia we have put together a curriculum leading to the BCompSc degree to satisfy two major objectives for sound, relevant and dynamic computer science education: understanding the theoretical developments that have made it possible for computers to transform the way we work and live, and acquiring the necessary skills to intelligently use this technology in the real world."};

	var wrapAround = {"prerequisites": "<span class='course_symbol fakeLink'/>"}

	parseResponseToFields(course, $("#courseDisplay"), wrapAround);
}

function displayPopupCourse(course)
{
	var course = {"code":"COMP 238", "prerequisites": ["COMP 242","COMP 243"], "name":"Math for Computer Sciences I", "description":"Computer Science is the foundation of all computer technologies concerned with receiving, storing, processing, sharing and delivering information. At Concordia we have put together a curriculum leading to the BCompSc degree to satisfy two major objectives for sound, relevant and dynamic computer science education: understanding the theoretical developments that have made it possible for computers to transform the way we work and live, and acquiring the necessary skills to intelligently use this technology in the real world."};
	var wrapAround = {"prerequisites": "<span class='course_symbol fakeLink'/>"}

	var modalWindow = $("#modalCourseDescription").attr("title",course.code);

	parseResponseToFields(course, modalWindow, wrapAround);
	modalWindow.dialog(
	{	//Options for .dialog()
		modal: true
	});

}


//One liner section, no function below this mark can take more than one line..
function isSecure() { return location.protocol == 'https:';}