// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require materialize-sprockets
//= require jquery
//= require bootstrap
//= require chosen-jquery
//= require moment
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