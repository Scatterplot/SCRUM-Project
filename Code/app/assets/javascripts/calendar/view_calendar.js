
/* Initialise buttons */
function initialise_buttons(){

	$('.btn').button();
}


/* Binds and initialises event generation functionality */
function initialise_event_generation(){

	//Bind event
	$('#btn_gen_event').bind('click', function(){

		//Retrieve template event
		var template_event = $('#external_event_template').clone();
		var background_color = $('#txt_background_color').val();
		var border_color = $('#txt_border_color').val();
		var text_color = $('#txt_text_color').val();
		var volunteerName = $('#volunteerName').val();
		var jobTitle = $('#jobTitle').val();
		var startTime = $('#startTime').val();
		var endTime = $('#endTime').val();
        var scheduleNotes = $('#scheduleNotes').val();
        var shiftDate = $('#shiftDate').val();

		//Edit id
		$(template_event).attr('id', get_uni_id());

		//Add template data attributes
		$(template_event).attr('data-background', background_color);
		$(template_event).attr('data-border', border_color);
		$(template_event).attr('data-text', text_color);
		$(template_event).attr('data-volunteerName', volunteerName);
		$(template_event).attr('data-jobTitle', jobTitle);
        $(template_event).attr('data-shiftDate', shiftDate);
		$(template_event).attr('data-startTime', startTime);
		$(template_event).attr('data-endTime', endTime);
        $(template_event).attr('data-scheduleNotes', scheduleNotes);

		//Style external event
		$(template_event).css('background-color', background_color);
		$(template_event).css('border-color', border_color);
		$(template_event).css('color', text_color);

		//Set text of external event
		$(template_event).text(volunteerName);

		//Append to external events container
		$('#external_events').append(template_event);
        
		//Initialise external event
		initialise_external_event('#' + $(template_event).attr('id'));

		//Show
		$(template_event).fadeIn(2000);
        var dateBreak = shiftDate.split("/");
        var startTimeBreak = startTime.split(":");
        var endTimeBreak = endTime.split(":");
        dateBreak[0] = parseInt(dateBreak[0]);
        dateBreak[1] = parseInt(dateBreak[1]);
        dateBreak[2] = parseInt(dateBreak[2]);
        dateBreak[3] = parseInt(startTimeBreak[0]);
        dateBreak[4] = parseInt(startTimeBreak[1]);
        dateBreak[5] = parseInt(endTimeBreak[0]);
        dateBreak[6] = parseInt(endTimeBreak[1]);
        external_event_dropped(new Date(dateBreak[2],dateBreak[0]-1,dateBreak[1],dateBreak[3],dateBreak[4]), new Date(dateBreak[2],dateBreak[0]-1,dateBreak[1],dateBreak[5],dateBreak[6]), false, $(template_event));
	});
}


/* Initialise external events */
function initialise_external_event(selector){
	//Initialise booking types
	$(selector).each(function(){

		//Make draggable
		$(this).draggable({
			revert: true,
			revertDuration: 0,
			zIndex: 999,
			cursorAt: {
				left: 10,
				top: 1
			}
		});

		//Create event object
		var event_object = {
			title: $.trim($(this).text())
		};

		//Store event in dom to be accessed later
		$(this).data('eventObject', event_object);
	});
}


/* Initialise color pickers */
function initialise_color_pickers(){

	//Initialise color pickers
	$('.color_picker').miniColors({
		'trigger': 'show',
		'opacity': 'none'
	});
}


/* Initialises calendar */
function initialise_calendar(){

	//Initialise calendar
	$('#calendar').fullCalendar({
		theme: false,
		firstDay: 1,
		header: {
			left: 'today prev,next',
			center: 'title',
			right: 'month,agendaWeek,agendaDay'
		},
		defaultView: 'month',
		allDaySlot: false,
		columnFormat: {
			month: 'dddd',
			week: 'ddd M/d',
			day: 'dddd M/d'
		},
		eventSources: [
			{
				url: 'calendar_events.json',
				editable: false
			}
		],
		droppable: true,
		drop: function(date, all_day){
			external_event_dropped(startDate, endDate, all_day, this);
		},
		eventClick: function(cal_event, js_event, view){
			calendar_event_clicked(cal_event, js_event, view);
		},
		editable: true
	});	

	//Initialise external events
	initialise_external_event('.external-event');
}


/* Handle an external event that has been dropped on the calendar */
function external_event_dropped(startDate, endDate, all_day, external_event){
//    alert("Within external_event_dropped");
	//Create vars
	var event_object;
	var copied_event_object;
	var duration = 60;
	var cost;

	//Retrive dropped elemetns stored event object
	event_object = $(external_event).data('eventObject');
    

	//Copy so that multiple events don't reference same object
	copied_event_object = $.extend({}, event_object);
	
	//Assign reported start and end dates
	copied_event_object.start = startDate;
	copied_event_object.end = endDate;
	copied_event_object.allDay = all_day;

	//Assign colors etc
	copied_event_object.backgroundColor = $(external_event).data('background');
	copied_event_object.textColor = $(external_event).data('text');
	copied_event_object.borderColor = $(external_event).data('border');

	//Assign text, price, etc
	copied_event_object.id = get_uni_id();
	copied_event_object.volunteerName = $(external_event).data('volunteerName');
	copied_event_object.jobTitle = $(external_event).data('jobTitle');
    copied_event_object.shiftDate = $(external_event).data('shiftDate');
	copied_event_object.startTime = $(external_event).data('startTime');
	copied_event_object.endTime = $(external_event).data('endTime');

	//Render event on calendar
	$('#calendar').fullCalendar('renderEvent', copied_event_object, true);
}


/* Initialise event clicks */
function calendar_event_clicked(cal_event, js_event, view){
//    alert("Within calendar_event_clicked");
	//Set generation values
	set_event_generation_values(cal_event.id, cal_event.backgroundColor, cal_event.borderColor, cal_event.textColor, cal_event.volunteerName, cal_event.jobTitle, cal_event.shiftDate, cal_event.startTime, cal_event.endTime, cal_event.scheduleNotes);
}


/* Set event generation values */
function set_event_generation_values(event_id, bg_color, border_color, text_color, volunteerName, jobTitle, shiftDate, startTime, endTime, scheduleNotes){

//    alert("Within set_event_generation_values");
	//Set values
	$('#txt_background_color').miniColors('value', bg_color);
	$('#txt_border_color').miniColors('value', border_color);
	$('#txt_text_color').miniColors('value', text_color);
	$('#volunteerName').val(volunteerName);
	$('#jobTitle').val(jobTitle);
	$('#shiftDate').val(shiftDate);
	$('#startTime').val(startTime);
	$('#endTime').val(endTime);
    $('#scheduleNotes').val(scheduleNotes);
	$('#txt_current_event').val(event_id);
}


/* Generate unique id */
function get_uni_id(){

	//Generate unique id
	return new Date().getTime() + Math.floor(Math.random()) * 500;
}


/* Initialise update event button */
function initialise_update_event(){
//        alert("initialise_update_event");
	var test = $('#calendar').fullCalendar('clientEvents');
	//Bind event
	$('#btn_update_event').bind('click', function(){

		//Create vars
		var current_event_id = $('#txt_current_event').val();

		//Check if value found
		if(current_event_id){

			//Retrieve current event
			var current_event = $('#calendar').fullCalendar('clientEvents', current_event_id);

			//Check if found
			if(current_event && current_event.length == 1){

				//Retrieve current event from array
				current_event = current_event[0];

				//Set values
				current_event.backgroundColor = $('#txt_background_color').val();
				current_event.textColor = $('#txt_text_color').val();
				current_event.borderColor = $('#txt_border_color').val();
				current_event.volunteerName = $('#volunteerName').val();
				current_event.jobTitle = $('#jobTitle').val();
				current_event.shiftDate = $('#shiftDate').val();
				current_event.startTime = $('#startTime').val();
				current_event.endTime = $('#endTime').val();
                current_event.scheduleNotes = $('#scheduleNotes').val();

				//Update event
				$('#calendar').fullCalendar('updateEvent', current_event);
			}
		}
	});
}