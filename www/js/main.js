$(function() {	//To be run when DOM is constructed
	$("#tabs").tabs({fx: { opacity: 'toggle' } });

	  $('#calViewSchedule').weekCalendar({
		readonly:false
		,date:new Date(2010, 00,5)
		,businessHours: {start:8, end:22, limitDisplay:true}
		,timeslotsPerHour: 4
	    ,data:"json/myschedule.json"
		,height: function($calendar){
			return $(window).height()-200;
		}
		,eventDrop:function(calEvent, element)
		{
			alert('Obviously you should not drag&drop courses you are in but its just a demo');
		
		}	
	});
});
