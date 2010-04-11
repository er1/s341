	var current;
	var dataStore;
	
	function generateSchedule()
	{
			var selectedCoursesArray = [];
			$("#selectedCourse").find(".symbol").not(".template").each(function() { 
				selectedCoursesArray.push($(this).text()) 
			});

			getData({action:"generateSchedule", "courses":selectedCoursesArray.join('-')}, function(response) {
				if (response.length==0 || response[0].length ==0)
				{	$("#noPossibleSchedule").show();
					$("#calendar").add("#pagination").hide();
					return;
				}
				$("#calendar").add("#pagination").show();
				$("#noPossibleSchedule").hide();

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
			,timeslotsPerHour: 1
			,data: data
			,newEventText: ""
			,height: function($calendar){
				return $(window).height()-300;
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


	function selectCourse(symbol, batch)
	{
		var template = $("#selectedCourse").find(".template").clone().removeClass("template");
		template.find(".symbol").text(symbol).addClass("course_symbol");
		template.find(".ui-icon").click(function() {
		 var label = $(this).parent()
		 label.animate({width:1}, 500, function() { label.remove(); generateSchedule(); });
		})
		template.css({width:1}).animate({"width":90}, 500);
		template.prependTo($("#selectedCourse"));
		if (!batch)
			generateSchedule();
	}

