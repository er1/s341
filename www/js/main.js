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

	$.ajax({"cache":"false", "type":options.type, "data":params, "dataType":"json", "url":"php/Main.php", "success": function(response) {
		if (!response)
			showNetworkError(params, callback);
		if (response.error && response.error=="true")
		{	if (response.reason == "notLoggedIn")
				showLogin(function() { getData(params, callback); });
			else
				alert('Unknown error occured.. Please try again');
		}
		else
			callback(response);
	}, "error":function(){ showNetworkError(params, callback); }
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
	getData({"action":"login","username":username, "password":password}, function(response) {
		if (response.loginError == "false")
			callback();
		else
			alert(response.reason);
	}, {"type":"post"});

	//Post-conditions, session is opened on the server.
}

function BSOD(message)
{	message = message || "Unknown Error";
	$("body").empty().addClass("bsod").append("<br><br><span class='bsod neg'>FATAL ERROR</span><br><br><p class='bsod'>" + message +"</p>");
}
