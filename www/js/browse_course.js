/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function() {	//Runs when tab is loaded
	CourseAccordion();
	DepartmentFilter();
})

function CourseAccordion()
{
	$("#CourseFilter").accordion({
		autoHeight: true
		//,		collapsible: true
	});
}

function DepartmentFilter()
{
	$("#combobox_container_department").combobox({
		autocomplete: true,
		buttonText: 'Show',
		showOnMouseOver: true,
		callbackSelectOption: function() {
			alert("hey i work!");
		}
	});

}

function tabCallBack() { //Runs when tab is shown

}


