//= require bootstrap
//= require chosen-jquery
//= require bootstrap-datepicker
//= require bootstrap-datetimepicker
//= require bootstrap-timepicker.min
//= require_tree .


$(document).ready(function() {
    $('.chosen').chosen({disable_search_threshold: 10});

    $('.datepicker').datepicker({
        format: "yyyy-mm-dd"
    });

    $('.datetimepicker').datetimepicker({
        format: 'DD/MM/YYYY hh:mm A'
    });

    $('.timepicker').timepicker({
        format: 'hh:mm A'
    });

    //$('.editable').editable();
});
