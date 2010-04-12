	var current;
	var dataStore = [];
	var constraintStore = {originalStore: [], filteredSchedule: [], length:150,  store:{}, count:0};
	var dayOfWeek = {"M":0,"T":1,"W":2,"J":3,"F":4,"S":5,"D":6};


	function generateSchedule()
	{
			var selectedCoursesArray = [];
			$("#selectedCourse").find(".symbol").not(".template").each(function() { 
				selectedCoursesArray.push($(this).text()) 
			});


			getData({action:"generateSchedule", "courses":selectedCoursesArray.join('-')}, function(response) {
				constraintStore.originalStore = response;
				filterSchedule(response);
			});

	}

	function filterSchedule(response)
	{
		dataStore = [];
		$.each(response, function(index, schedule)
		{	var conflict = false;
			$.each(schedule, function(iindex, class)
			{
				if (isConflict(class))
				{	conflict=true;
					return false;
				}
	
			})
	
			if (!conflict)
				dataStore.push(schedule);
		})
		
		if (dataStore.length == 0)
		{	$("#noPossibleSchedule").show();
			$("#pagination").hide();
			if (constraintStore.count==0)
				$("#calendar").hide();
			else
				showTentativeSchedule(-1);
								
		}
		else 
		{
			$("#calendar").add("#pagination").show();
			$("#noPossibleSchedule").hide();
	
			$("#total").text(dataStore.length);
			showTentativeSchedule(current-1);
		
		}
	}
	function isConflict(record)
	{	var rStart = parseTimeToInt(record.StartTime);
		var rEnd = parseTimeToInt(record.EndTime);
		var flag=false;
		$.each(constraintStore.store, function(index, constraint)
		{

			if ((constraint.start.getDay() +6) % 7 != dayOfWeek[record.Day])
				return true;
			var cStart = parseTimeToInt(constraint.start);
			var cEnd = parseTimeToInt(constraint.end);			

			if (
					(rStart >= cStart && rStart <= cEnd) || (rEnd >= cStart && rEnd <= cEnd)
					 || (cStart >= rStart && cStart <= rEnd) || (cEnd >= rStart && cEnd <= rEnd)
 				)
			{	
				flag=true;
				return false;
			}	
		})
		return flag;	//no conflict.	
	}

	function parseTimeToInt(inputTime)
	{	var time;
		if (typeof(inputTime == "object"))
			inputTime = inputTime.toString();

		if (inputTime.length > 8)	//hmm.. appears to be Jan 1st 2010 hh:mm:ss GMT blablabla.. parse that
		{
			var start = inputTime.indexOf(":") -2;
			time = inputTime.substr(start, 8);
		}
		else
			time = inputTime;

		//time is hh:mm:ss, needs to return an int representing that..
		return ((+time.split(":")[2]) //seconds;
		+ (+time.split(":")[1])*60 //seconds;
		+ (+time.split(":")[0])*3600); //seconds;
	}
	function showTentativeSchedule(scheduleIndex)
	{
	
		$("#current").text(scheduleIndex+1);
	
		var data = {};
		data.events = [];
		var minTime, maxTime;
		if (scheduleIndex == -1)	//only constraints, no schedules
		{
			minTime=8
			maxTime=23;
		}	
		else 
		{
			minTime=23
			maxTime=0;
		
		}
		$.each(constraintStore.store, function(index, constraint)
		{
			data.events.push(constraint);
		})

		if (scheduleIndex >=0)
		$.each(dataStore[scheduleIndex], function(index, record) {

			if (!isConflict(record))
				data.events.push(record);		
			record.id = index;

			if (+record.StartTime.split(":")[0] < minTime)
				minTime = +record.StartTime.split(":")[0];
			if (+record.EndTime.split(":")[0] > maxTime)
				maxTime = +record.EndTime.split(":")[0];
				
			maxTime++;

			record.start = "2010-01-0" + (4+dayOfWeek[record.Day]) + "T" + record.StartTime + ".000+10:00";
			record.end = "2010-01-0" + (4+dayOfWeek[record.Day]) + "T" + record.EndTime + ".000+10:00";
	
			record.title = record.Symbol + " " + record.Section;
			record.read_only = true;
			record.course = record.Symbol;
		});
		
		$('#calendar').weekCalendar({
			buttons:false
			,date: new Date(2010, 00,5)
			,businessHours: {start:minTime, end:maxTime, limitDisplay:true}
			,timeslotsPerHour: 2
			,timeslotHeight: 13
			,allowCalEventOverlap:true
			,timeSeparator: " @ "
			,use24Hour: true
			,timeFormat:"G:i"
			,data: data
			,newEventText: ""
			,height: function($calendar){
				return $(window).height()-300;
			}
			,eventRender:function(calEvent, element)
			{
				if (calEvent.title == "")
					element.find("div").add(element).css({borderWidth:"0", color:"#CD0A0A", backgroundColor:"#FF6666"}).find(".wc-title")
			}
			, eventClick:function(calEvent, element)
			{
				if (calEvent.title == "")
				{
					$("#calendar").weekCalendar("removeEvent", calEvent.id);
					delete constraintStore.store[calEvent.id];
					filterSchedule(constraintStore.originalStore);
					constraintStore.count--;
				}
				else
					displayPopupCourse(calEvent.course);
			}				
		
			, eventNew: function(calEvent, element)
			{	var newId = constraintStore.length+1
				constraintStore.length = newId;
				calEvent.id = newId;
				constraintStore.store[newId] = calEvent;
				constraintStore.count++;
				filterSchedule(constraintStore.originalStore);

			}
			, draggable: function(calEvent, element)
			{
				return false;
			}
			, resizable: function(calEvent, element)
			{
				return (calEvent.title == "");
			}

		}).weekCalendar("refresh");
	
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

