if(!!(window.addEventListener)) window.addEventListener('DOMContentLoaded', main);
else window.attachEvent('onload', main);

var data = [
        {
            value: 50,
            color: "RED",
            label: 'ACTIVO - 50%',
            labelColor: 'white',
            labelFontSize: '16px'
        },
        {
            value: 25,
            color: "GREEN",
            label: 'DISPONIBLE - 25%',
            labelColor : 'white',
            labelFontSize : '16'
        },
        {
            value: 25,
            color: "YELLOW",
            label: 'RECHAZADO - 25%',
            labelColor : 'white',
            labelFontSize : '16'
        }
    ];

function main() {
    pieChart();


    $(document).ready(
                function () {
                    var ctx = document.getElementById("pieChart").getContext("2d");
                    var myNewChart = new Chart(ctx).Pie(data);

                    $("#pieChart").click(
                        function (evt) {
                            window.location = "FrmGrid.aspx";
                        }
                    );
                }
            );

}
function pieChart() {
    
    var ctx = document.getElementById("pieChart").getContext("2d");
    var pieChart = new Chart(ctx).Pie(data);    

    legend(document.getElementById("pieLegend"), data, pieChart);

}