$(document).ready(function () {
    $("[data-toggle]").click(function () {
        var toggle_el = $(this).data("toggle");
        $(toggle_el).toggleClass("open-sidebar");
        if ($("#sidebar-toggle").hasClass("icon-mostrarmenu")) {
            $("#sidebar-toggle").addClass("icon-ocultarmenu");
            $("#sidebar-toggle").removeClass("icon-mostrarmenu");
        }
        else {
            $("#sidebar-toggle").addClass("icon-mostrarmenu");
            $("#sidebar-toggle").removeClass("icon-ocultarmenu");
        };
    });
});

$(".swipe-area").swipe({
    swipeStatus: function (event, phase, direction, distance, duration, fingers) {
        if (phase == "move" && direction == "right") {
            $(".containerSW").addClass("open-sidebar");
            return false;
        }
        if (phase == "move" && direction == "left") {
            $(".containerSW").removeClass("open-sidebar");
            return false;
        }
    }
});