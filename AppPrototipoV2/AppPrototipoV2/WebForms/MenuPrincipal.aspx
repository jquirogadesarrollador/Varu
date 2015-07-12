<%@ Page Title="" Language="C#" MasterPageFile="~/WebForms/Principal2.Master" EnableViewStateMac="false"
    AutoEventWireup="true" CodeBehind="MenuPrincipal.aspx.cs" Inherits="AppPrototipoV2.WebForms.MenuPrincipal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="text-center">
        <span class="glyphicon glyphicon-th" style="font-size: 25px; padding-top: 20px; color: #59c2e6;">
        </span>
    </div>
    <div class="text-center fontRegular">
        <h3>
            MENÚ PRINCIPAL</h3>
    </div>
    <div style="position: relative; margin-top: 40px;" class="text-center">
        <div class="caja1">
            <a href="FrmTableroControl.aspx" class="btn btn-default btn-circle cslMer"><i class="icon-mercadeo_n">
            </i><i class="icon-mercadeo_h"></i></a>
            <div style="padding-top: 10px;" class="fontRegular">
                <span style="font-size: 13px;">MERCADEO Y VENTAS</span>
            </div>
        </div>
        <div class="caja2 fontRegular">
            <a href="#" class="btn btn-default btn-circle clsSel"><i class="icon-seleccion_n"></i>
                <i class="icon-seleccion_h"></i></a>
            <div style="padding-top: 10px;">
                <span style="font-size: 13px;">SELECCIÓN</span>
            </div>
        </div>
        <div class="caja3 fontRegular">
            <a href="#" class="btn btn-default btn-circle clsCont"><i class="icon-contratacion_n"></i>
                <i class="icon-contratacion_h"></i></a>
            <div style="padding-top: 10px;">
                <span style="font-size: 13px;">CONTRATACIÓN</span>
            </div>
        </div>
    </div>
    <div style="position: relative; margin-top: 180px;" class="text-center">
        <div class="caja1 fontRegular">
            <a href="#" class="btn btn-default btn-circle clsNom"><i class="icon-nomina_n"></i>
                <i class="icon-nomina_h"></i></a>
            <div style="padding-top: 10px;">
                <span style="font-size: 13px;">NÓMINA</span>
            </div>
        </div>
        <div class="caja2 fontRegular">
            <a href="#" class="btn btn-default btn-circle clsFin" style=""><i class="icon-finanzas_n"></i>
                <i class="icon-finanzas_h"></i></a>
            <div style="padding-top: 10px;">
                <span style="font-size: 13px;">FINANZAS</span>
            </div>
        </div>
        <div class="caja3 fontRegular">
            <a href="#" class="btn btn-default btn-circle clsConta"><i class="icon-contabilidad_n"></i>
                <i class="icon-contabilidad_h"></i></a>
            <div style="padding-top: 10px;">
                <span style="font-size: 13px;">CONTABILIDAD</span>
            </div>
        </div>
    </div>
    <div style="position: relative; margin-top: 320px;" class="text-center">
        <div class="caja1 fontRegular">
            <a href="#" class="btn btn-default btn-circle clsMdlCte"><i class="icon-cliente_n"></i>
                <i class="icon-cliente_h"></i></a>
            <div style="padding-top: 10px;">
                <span style="font-size: 13px;">MODULO DEL CLIENTE</span>
            </div>
        </div>
        <div class="caja2 fontRegular">
            <a href="#" class="btn btn-default btn-circle clsServSit"><i class="icon-site_n"></i>
                <i class="icon-site_h"></i></a>
            <div style="padding-top: 10px;">
                <span style="font-size: 13px;">SERVICIOS SITE</span>
            </div>
        </div>
        <div class="caja3 fontRegular">
            <a href="#" class="btn btn-default btn-circle clsAdmn"><i class="icon-administracion_n"></i>
                <i class="icon-administracion_h"></i></a>
            <div style="padding-top: 10px;">
                <span style="font-size: 13px;">ADMINISTRACIÓN SEGURIDAD</span>
            </div>
        </div>
    </div>
</asp:Content>
