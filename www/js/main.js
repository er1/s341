var a;

$(function() {	//To be run when DOM is constructed
	$("#tabs").tabs({
						fx: { opacity: 'toggle' } 
						, show: function(event, ui) {
							{ tabCallBack(); }
						}
					});
		
});


function getData(endpoint, params, callback)
{
	$.ajax({"cache":"false", "data":params, "dataType":"json", "url":endpoint, "success": function(response) {
		if (!response)
			showNetworkError(endpoint, params, callback);
		if (responseshowNetworkError.error && response.error=="true")
		{	if (response.reason == "notLoggedIn")
				showLogin(function() { getData(endpoint, params, callback); });
			else
				alert('Unknown error occured.. Please try again');
		}
		else
			callback(response);
	}, "error":function(){ showNetworkError(endpoint, params, callback); }
	});

}

function showNetworkError(endpoint, params, callback)
{
		var modalNetworkError = $("#modalTimeout");	
		modalNetworkError.dialog({
                    modal:true,
                    resizable:false,
                    buttons: {
			Ok: function()
                        {
                            getData(endpoint, params, function() {
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
	getData("php/login.php", {"username":username, "password":password}, function(response) {
		if (response.loginError == "false")
			callback();
		else
			alert(response.reason);
	});

	//Post-conditions, session is opened on the server.
}


