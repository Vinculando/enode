$(document).on("ready", function() {
    $('#datetimepicker1').datetimepicker({
      //format: 'DD/MM/YYYY',
      icons: {
        time: "fa fa-clock-o",
        date: "fa fa-calendar",
        up: "fa fa-arrow-up",
        down: "fa fa-arrow-down",
        previous: "fa fa-chevron-left",
        next: "fa fa-chevron-right"
      }
    });

    $('.selectpicker').selectpicker({
      iconBase: 'fontawesome',
      tickIcon: 'facheck'
    });
});
