<%@ Page Title="" Language="C#" MasterPageFile="~/WebForms/TblControl.Master" AutoEventWireup="true"
    CodeBehind="FrmTableroControl.aspx.cs" Inherits="AppPrototipoV2.WebForms.FrmTableroControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
        google.load('visualization', '1', { packages: ['corechart'] });
    </script>
    <script type="text/javascript">
        $(document).ready(function () {
            $.ajax({
                type: 'POST',
                dataType: 'json',
                contentType: 'application/json',
                url: 'FrmTableroControl.aspx/GetData',
                data: '{}',
                success:
                    function (response) {
                        drawVisualization(response.d);
                    }

            });
        })

        function drawVisualization(dataValues) {
            var data = new google.visualization.DataTable();
            data.addColumn('string', 'Column Name');
            data.addColumn('number', 'Column Value');

            for (var i = 0; i < dataValues.length; i++) {
                data.addRow([dataValues[i].ColumnName, dataValues[i].Value]);
            }

            new google.visualization.PieChart(document.getElementById('visualization')).
                draw(data, { title: "Google Chart demo" });
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