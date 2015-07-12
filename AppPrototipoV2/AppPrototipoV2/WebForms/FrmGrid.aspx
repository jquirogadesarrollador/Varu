<%@ Page Title="" Language="C#" MasterPageFile="~/WebForms/Principal.Master" AutoEventWireup="true"
    CodeBehind="FrmGrid.aspx.cs" Inherits="AppPrototipoV2.WebForms.FrmForms" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../Scripts/jsapi.js" type="text/javascript"></script>
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
              'width': 450,
              'height': 210,
              fontSize: 12,
              fontName: 'Open Sans, Regular',
              colors: ['#99cc66', '#ffcc66', '#33ccff'],
              legend: { alignment: 'center', textStyle: { fontSize: 14} }
          }; 
                   

            var chart = new google.visualization.PieChart(document.getElementById('piechart'));
            chart.draw(data, options);
            chart.setSelection([{ row: 0}]);
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="DId" style="border-bottom: 1px solid #003366;">
        <h3 class="text-left fontRegular">
            Tablero de Control</h3>
    </div>
    <div class="DivContGrid">
        <div class="DivGraf">
            <div id="piechart" style="width: 150%; height: 150%;">
            </div>
        </div>
        <div class="DivGrid" style="text-align: center; text-decoration: none;>
            <form runat="server">
            <asp:GridView ID="dgvTblControl" runat="server" AutoGenerateColumns="False" DataSourceID="dtsPrueba"
                CssClass="table table-striped table-bordered table-condensed fontRegular" 
                HorizontalAlign="Center">
                <Columns>
                    <asp:HyperLinkField HeaderText="Ver" NavigateUrl="~/WebForms/FrmForms.aspx">
                    <ControlStyle CssClass="glyphicon glyphicon-eye-open"/>
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle Wrap="False" />
                    </asp:HyperLinkField>
                    <asp:BoundField DataField="Column1" HeaderText="Nombre" ReadOnly="True" SortExpression="Column1" />
                    <asp:BoundField DataField="Column2" HeaderText="Apellido" ReadOnly="True" SortExpression="Column2" />
                    <asp:BoundField DataField="Column3" HeaderText="Tipo Documento" ReadOnly="True" SortExpression="Column3" />
                    <asp:BoundField DataField="Column4" HeaderText="Número Documento" ReadOnly="True"
                        SortExpression="Column4" />
                    <asp:BoundField DataField="Column5" HeaderText="Estado" ReadOnly="True" SortExpression="Column5" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="dtsPrueba" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                
                SelectCommand="SELECT 'Nombre', 'Apellido', 'Tipo Documento','Número Documento','Estado'">
            </asp:SqlDataSource>
            </form>
        </div>
    </div>
</asp:Content>
