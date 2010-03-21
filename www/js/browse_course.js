$(document).ready(function() {	//Runs when tab is loaded
	DepartmentFilter();
})

function CourseAccordion()
{
	$("#CourseFilter").accordion({
		autoHeight: true,
		collapsible: true
	});
}

function DepartmentFilter()
{
	$("#department_combobox").combobox({
		autocomplete: true,
		callbackSelectOption: function(val) {
			alert("Selected value: "+val);
		}
	});

}

function CourseCodeHandler()
{
	$("#CourseCodeTextBox")

}

function tabCallBack() { //Runs when tab is shown
	CourseAccordion();
}


