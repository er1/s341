$(function() {

	var current = 1;
	var dataStore;
	var dayOfWeek = {"M":0,"T":1,"W":2,"J":3,"F":4,"S":5,"D":6};


	var course = $("#courseInput").combobox({
		onSelect:function(e, ui) 
		{	
			 selectCourse(ui.item.value);
		} 
		, defaultText:"Add a course by typing it's name or number"
		, dataSource:"ajax"
	});

	//Get suggestedcourse
	getData({"action":"getSequence"}, function(response) 
	{	var ctp =0;
		$.each(response, function(index, record) {
			if (record.Grade == null && record.canTakeCourse == "1")
			{	if (++ctp > 5)
					return;
				$("#suggestedCourses").append("<span class='course_symbol fakeLink'>" + record.Symbol + "</span><br>");
				selectCourse(record.Symbol);
			}
		});
	
		generateSchedule();


	});

	function generateSchedule()
	{
			var selectedCoursesArray = [];
			$("#selectedCourse").find(".symbol:visible").each(function() { 
				selectedCoursesArray.push($(this).text()) 
				console.log(selectedCoursesArray);
			});

			getData({action:"generateSchedule", "courses":selectedCoursesArray.join('-')}, function(response) {
				dataStore = response;
				$("#total").text(response.length);
				showTentativeSchedule(current-1);
			});

	}

	function showTentativeSchedule(scheduleIndex)
	{
	
		$("#current").text(scheduleIndex+1);
	
		var data = {};
		data.events = dataStore[scheduleIndex];
		var minTime=23, maxTime=0;
		$.each(data.events, function(index, record) {
			
			if (+record.StartTime.split(":")[0] < minTime)
				minTime = +record.StartTime.split(":")[0];
			if (+record.EndTime.split(":")[0] > maxTime)
				maxTime = +record.EndTime.split(":")[0];
				
			maxTime++;

			record.start = "2010-01-0" + (4+dayOfWeek[record.Day]) + "T" + record.StartTime + ".000+10:00";
			record.end = "2010-01-0" + (4+dayOfWeek[record.Day]) + "T" + record.EndTime + ".000+10:00";
	
			record.title = record.Symbol + " / LEC XYZ";
			record.read_only = true;
			record.course = record.Symbol;
		});
		
		$('#calendar').weekCalendar({
			readonly:false
			,buttons:false
			,date: new Date(2010, 00,5)
			,businessHours: {start:minTime, end:maxTime, limitDisplay:true}
			,timeslotsPerHour: 4
			,data: data
			,newEventText: ""
			,height: function($calendar){
				return $(window).height()-310;
			}
			,eventDrop:function(calEvent, element)
			{
				alert('Obviously you should not drag&drop courses you are in but its just a demo');
			
			}
			, eventClick:function(calEvent, element)
			{
				displayPopupCourse(calEvent.course);
			}				
			, eventRender: function(calEvent, element)
			{
		
			}
		
			, eventNew: function(calEvent, element)
			{
				calEvent.title = "";
					element.find("div").add(element).css({borderWidth:"0", color:"#CD0A0A", backgroundColor:"#FF6666"}).find(".wc-title")
			}
		}).weekCalendar("refresh");;
	
	}


	$("#next").click(function() {
		if (current+1 < dataStore.length)
			showTentativeSchedule(++current-1);	
	});	

	$("#previous").click(function() {
		if (current-1 >=1)
			showTentativeSchedule(--current-1);	
	});	

	function selectCourse(symbol)
	{
		var template = $("#selectedCourse").find(".template").clone().removeClass("template");
		template.find(".symbol").text(symbol).addClass("course_symbol");
		template.find(".ui-icon").click(function() {
		 var label = $(this).parent()
		 label.animate({width:1}, 500, function() { label.remove(); });
		})
		template.css({width:1}).animate({"width":90}, 500);
		template.prependTo($("#selectedCourse"));
	}
});
