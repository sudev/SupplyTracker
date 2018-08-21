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
//= require moment
//= require jquery
//= require materialize-sprockets
//= require materialize-form
//= require cocoon
//= require chosen-jquery
//= require bootstrap-datetimepicker
//= require scaffold

$(document).ready(function() {
    $('form').on('cocoon:after-insert', function(e, insertedItem){
        $('select').chosen({allow_single_deselect: true, disable_search_threshold: 10});
    });
});