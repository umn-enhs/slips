$(document).ready(function(){
	updateDatePicker();
});
 
function updateDatePicker () { 
    $("input[value='date.struct']:hidden").each(function() {
        var dateFormat = "dd/mm/yy hh:mm:ss";
        var name = $(this).attr('name');            
        var id = name.replace(".", "_").replace("[", "_").replace("]", "_") + "_input"; // Create JQuery Friendly ID

        if ($('#'+id).length == 0) {

            // Find the Select Elements
			var selectDay= $(this).nextAll("select:eq(0)").hide();
            var selectMonth = $(this).nextAll("select:eq(1)").hide();
            var selectYear = $(this).nextAll("select:eq(2)").hide();
            var selectHour = $(this).nextAll("select:eq(2)").hide();
            var selectMinute = $(this).nextAll("select:eq(2)").hide();
            var selectYear = $(this).nextAll("select:eq(2)").hide();

            // Get the Values
            var dateDay= $(selectDay).val();
            var dateMonth = $(selectMonth).val();
            var dateYear = $(selectYear).val();

            // Calculate the Current Input Value
            var val = "";           
            if (dateDay != "" && dateYear != "" && dateMonth != "") { // If there is a date in the Selects then use it otherwise it's empty
                var date = new Date (dateYear, dateMonth-1, dateDay);
                val = $.datepicker.formatDate(dateFormat, date);
            }

            // Create element
            var template = "<input type='text' name='"+ id +"' id='"+ id +"' value='"+ val +"'/>";

            if ($(this).parent(".datePickerCalenderView").size()) {
                template = "<div id='"+ id +"'/>";
            }


            $(this).before(template);       
            var displayWidget = $('#' + id );

            displayWidget.blur(function() {         
                var date = $.datepicker.parseDate(dateFormat, $(this).val());

                if (date == null) {
                    $(selectDay).val("");
                    $(selectMonth).val("");
                    $(selectYear).val("");
                }
                else {
                    $(selectDay).val(date.getDate());
                    $(selectMonth).val(date.getMonth()+1);
                    $(selectYear).val(date.getFullYear());
                }
            }).keydown(function(event) {
                // Show popup on Down Arrow
                if (event.keyCode == 40) {
                    displayWidget.datepicker("show");
                }
            });

            displayWidget.datepicker({  
                changeMonth: true,
                changeYear: true,
                dateFormat: dateFormat,
                constrainInput: true,           
                showButtonPanel: true,
                showWeeks: true,
                showOn: 'button',           
                onSelect: function(dateText, inst) { 
                    if (inst == null) {
                        $(selectDay).val("");
                        $(selectMonth).val("");
                        $(selectYear).val("");
                    }
                    else {
                        $(selectDay).val(inst.selectedDay);
                        $(selectMonth).val(inst.selectedMonth+1);
                        $(selectYear).val(inst.selectedYear);
                    }
                }           
            });     
        }
    });   
}
