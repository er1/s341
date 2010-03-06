$(function() {	//To be run when DOM is constructed
	$("#tabs").tabs({fx: { opacity: 'toggle' } });
	showSchedule();

		
});

function showSchedule()
{
	getData("php/viewSchedule.php", {}, function(scheduleData) {
		$('#calViewSchedule').weekCalendar({
		readonly:false
		,date:new Date(2010, 00,5)
		,businessHours: {start:8, end:22, limitDisplay:true}
		,timeslotsPerHour: 4
		,data: scheduleData
		,height: function($calendar){
			return $(window).height()-200;
		}
		,eventDrop:function(calEvent, element)
		{
			alert('Obviously you should not drag&drop courses you are in but its just a demo');
		
		}
		
		
		});
	})


}

function getData(endpoint, params, callback)
{
	$.ajax({"cache":"false", "data":params, "dataType":"json", "url":endpoint, "success": function(response) {
		if (!response)
			showNetworkError(endpoint, params, callback);
		if (response.error && response.error=="true")
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
		modalNetworkError.dialog({modal:true, resizable:false, buttons: {
			Ok: function() {
					getData(endpoint, params, function() { 					modalNetworkError.dialog('close'); callback(); })
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