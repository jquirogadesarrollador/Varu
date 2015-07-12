<%@ Page Title="" Language="C#" MasterPageFile="~/WebForms/TblControl.Master" AutoEventWireup="true"
    CodeBehind="FrmTableroControl.aspx.cs" Inherits="AppPrototipoV2.WebForms.FrmTableroControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">
        $(document).ready(
                function () {
                    var myNewChart = new google.visualization.PieChart(document.getElementById('piechart'));

                    $("#piechart").click(
                        function (evt) {
                            window.location = "FrmGrid.aspx";
                        }
                    );
                }
            );
        google.load("visualization", "1", { packages: ["corechart"] });
        google.setOnLoadCallback(drawChart);
        function drawChart() {

            var data = google.visualization.arrayToDataTable([
          ['Estado', ''],
          ['Activo', 50],
          ['Rechazado', 25],
          ['Disponible', 25]
        ]);

            var options = { 'title': '',
                'width': 750,
                'height': 600,
                fontSize: '25',
                fontName: 'Open Sans, Regular',
                colors: ['#99cc66', '#ffcc66', '#33ccff'],
                legend: { alignment: 'center', textStyle: { fontSize: 14} }
            };

            var chart = new google.visualization.PieChart(document.getElementById('piechart'));
            
            chart.draw(data, options);
        }
    </script>
    <div class="row">
        <div class="col-md-12" style="border-bottom: 1px solid #003366; width: 80%;">
            <h3 class="text-left fontRegular">
                Tablero de Control</h3>
        </div>
        <div id="canvas-holder" class="col-md-12 text-center">
            <%--<canvas id="chart-area" width="400" height="400" />--%>
            <div class="DivGrafP">
                <%--<canvas id="pieChart" width="300%" height="300%"></canvas>
                <div id="piechart" style="width: 150%; height: 150%;">--%>
                <div id="piechart">
                </div>
            </div>
            <%--<div class="legendP">
                <div id="pieLegend">
                </div>
            </div>--%>
        </div>
    </div>
</asp:Content>
