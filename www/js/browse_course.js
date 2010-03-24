$(document).ready(function() {	//Runs when tab is loaded
	DepartmentFilter();
	CourseCodeFilter();
	SemesterFilter();
})

/*function CourseAccordion()
{
	$("#CourseFilter").accordion({
		autoHeight: true,
		collapsible: true
	});
}*/

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
		maxVisibleRows: 5,
		autoCompleteFirstMatch: false,
		width: 50
	});

}

function SemesterFilter()
{
	$("#semester_combobox").flexbox({
		"results": [
			{"id": "1", "name": "2010 Summer"},
			{"id": "2", "name": "2010 Fall"},
			{"id": "3", "name": "2010 Winter"}
		],
		"total": 3
	}, {
		paging: false,
		maxVisibleRows: 5,
		autoCompleteFirstMatch: false,
		width: 120
	});

}

function CourseCodeFilter()
{
	$("#course_code_combobox").flexbox({
		"results": [
			{"id": "1", "name": "341"},
			{"id": "2", "name": "312"},
			{"id": "3", "name": "311"},
			{"id": "4", "name": "228"},
			{"id": "5", "name": "321"}
		],
		"total": 5
	}, {
		paging: false,
		maxVisibleRows: 5,
		autoCompleteFirstMatch: false,
		width: 50
	});
}

function tabCallBack() { //Runs when tab is shown
	//CourseAccordion();
}


