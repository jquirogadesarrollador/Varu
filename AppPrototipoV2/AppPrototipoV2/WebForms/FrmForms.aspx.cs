using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AppPrototipoV2.WebForms
{
    public partial class FrmForms : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ClientScript.GetPostBackEventReference(this, string.Empty);
            if (Request.Form["__EVENTTARGET"] == "fnPrueba")
            {
                fnPrueba();
            }
        }
        public void fnPrueba()
        {
            
        }

    }
}