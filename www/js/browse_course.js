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
	$("#department_combobox").flexbox({
		"results": [
			{"id": "1", "name": "COEN"},
			{"id": "2", "name": "SOEN"},
			{"id": "3", "name": "COMP"},
			{"id": "4", "name": "ELEC"},
			{"id": "5", "name": "DERP"}
		],
		"total": 5
	}, {
		paging: false,
		maxVisibleRows: 8,
		autoCompleteFirstMatch: false
	}
		
	);

}

function CourseCodeHandler()
{
	$("#CourseCodeTextBox")

}

function tabCallBack() { //Runs when tab is shown
	CourseAccordion();
}


