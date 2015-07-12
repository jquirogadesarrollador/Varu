using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;

using TSHAK.Components;

using Brainsbits.LLB.maestras;
using Brainsbits.LLB.seguridad;
using Brainsbits.LLB;
using System.Configuration;

namespace AppPrototipoV2.WebForms
{
    public partial class FrmTableroControl : System.Web.UI.Page
    {
        private String NOMBRE_AREA = tabla.NOMBRE_AREA_GESTION_COMERCIAL;

        private void RolPermisos()
        {
            #region variables
            int contadorPermisos = 0;
            #endregion variables

            seguridad _seguridad = new seguridad(Session["idEmpresa"].ToString(), Session["USU_LOG"].ToString());

            tools _tools = new tools();

            String rutaScript = _tools.obtenerRutaVerdaderaScript(Request.ServerVariables["SCRIPT_NAME"]);

            DataTable tablaInformacionPermisos = _seguridad.ObtenerPermisosBotones(NOMBRE_AREA, rutaScript);

            maestrasInterfaz _maestrasInterfaz = new maestrasInterfaz();

            contadorPermisos = _maestrasInterfaz.RolPermisos(this, tablaInformacionPermisos);

            if (contadorPermisos <= 0)
            {
                SecureQueryString QueryStringSeguro;
                QueryStringSeguro = new SecureQueryString(_tools.byteParaQueryStringSeguro());

                QueryStringSeguro["img_area"] = "restringido";
                QueryStringSeguro["nombre_area"] = "ACCESO RESTRINGIDO";
                QueryStringSeguro["nombre_modulo"] = "ACCESO RESTRINGIDO";
                QueryStringSeguro["accion"] = "inicial";

                Response.Redirect("~/sinPermisos/sinPermisos.aspx?data=" + HttpUtility.UrlEncode(QueryStringSeguro.ToString()));
            }
            else
            {
                Session["URL_ANTERIOR"] = HttpContext.Current.Request.RawUrl;
            }
        }

        protected void Page_LoadComplete(object sender, EventArgs e)
        {
            RolPermisos();
        }

        #region variables
        private System.Drawing.Color colorRojo = System.Drawing.ColorTranslator.FromHtml("#F8523A");
        private System.Drawing.Color colorAmarillo = System.Drawing.ColorTranslator.FromHtml("#FFF200");
        private System.Drawing.Color colorVerde = System.Drawing.ColorTranslator.FromHtml("#50CE04");

        private enum Proceso
        {
            Correcto = 0,
            Error = 1,
            Advertencia = 2
        }
        #endregion

        #region constructores
        protected void Page_Load(object sender, EventArgs e)
        {



        }
        #endregion



    }
}