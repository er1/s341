var a;

$(function() {	//To be run when DOM is constructed
	$("#tabs").tabs({
						fx: { opacity: 'toggle' } 
						, show: function(event, ui) {
							{ tabCallBack(); }
						}
					});
		
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
			callback(response);
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
