<%@ Page Title="" Language="C#" MasterPageFile="~/WebForms/TblControl.Master" AutoEventWireup="true"
    CodeBehind="FrmTableroControl.aspx.cs" Inherits="AppPrototipoV2.WebForms.FrmTableroControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
        <div class="col-md-12" style="border-bottom: 1px solid #003366; width: 80%;">
            <h3 class="text-left fontRegular">
                Tablero de Control - Mercadeo y Ventas</h3>
        </div>
        <div id="canvas-holder" class="col-md-12 text-center">
            <%--<canvas id="chart-area" width="400" height="400" />--%>
            <div class="DivGrafP">
                <%--<canvas id="pieChart" width="300%" height="300%"></canvas>
                <div id="piechart" style="width: 150%; height: 150%;">--%>
                <div id="chart_div">
                </div>
            </div>
            <%--<div class="legendP">
                <div id="pieLegend">
                </div>
            </div>--%>
        </div>
    </div>
    
</asp:Content>