// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//= require Chart.bundle
//= require chartkick
//= require Chart
//= require jquery
//= require jquery-1.8.3.min
//= require bootstrap.min
//= require bootstrap-select
//= require jquery.dcjqaccordion.2.7
//= require jquery.scrollTo.min
//= require jquery.nicescroll
//= require jquery.sparkline
//= require common-scripts
//= require jquery.gritter
//= require gritter-conf
//= require sparkline-chart
//= require moment
//= require moment/es.js
//= require bootstrap-datetimepicker
//= require bootstrap-select
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$("turbolinks:load", function () {
                $('#datetimepicker2').datetimepicker({
                  format: 'DD/MM/YYYY',
                  icons: {
                    time: "fa fa-clock-o",
                    date: "fa fa-calendar",
                    up: "fa fa-arrow-up",
                    down: "fa fa-arrow-down",
                    previous: "fa fa-chevron-left",
                    next: "fa fa-chevron-right"
                }
                });
            });
