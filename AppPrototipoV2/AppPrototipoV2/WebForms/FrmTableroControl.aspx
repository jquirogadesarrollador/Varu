<%@ Page Title="" Language="C#" MasterPageFile="~/WebForms/TblControl.Master" AutoEventWireup="true"
    CodeBehind="FrmTableroControl.aspx.cs" Inherits="AppPrototipoV2.WebForms.FrmTableroControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!--Load the AJAX API-->
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">

        // Load the Visualization API and the piechart package.
        google.load('visualization', '1.0', { 'packages': ['corechart'] });

        // Set a callback to run when the Google Visualization API is loaded.
        google.setOnLoadCallback(drawChart);

        // Callback that creates and populates a data table,
        // instantiates the pie chart, passes in the data and
        // draws it.
        function drawChart() {

            // Create the data table.
            var data = new google.visualization.DataTable();
            data.addColumn('string', 'Topping');
            data.addColumn('number', 'Slices');
            data.addRows([
          ['Mushrooms', 20],
          ['Onions', 20],
          ['Olives', 20]
        ]);

            // Set chart options
            var options = { 'title': '',
                'width': 750,
                'height': 600,
                fontSize: '25',
                fontName: 'Open Sans, Regular',
                colors: ['#99cc66', '#ffcc66', '#33ccff'],
                legend: { alignment: 'center', textStyle: { fontSize: 14} }
            };

            // Instantiate and draw our chart, passing in some options.
            var chart = new google.visualization.PieChart(document.getElementById('visualization'));
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
                <div id="visualization">
                </div>
            </div>
            <%--<div class="legendP">
                <div id="pieLegend">
                </div>
            </div>--%>
        </div>
    </div>
</asp:Content>