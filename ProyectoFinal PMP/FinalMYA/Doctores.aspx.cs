using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalMYA
{
    public partial class clienteInt1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void atras_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx");
        }

        protected void btnBuscarCodigo_Click(object sender, EventArgs e)
        {
            Response.Redirect("ofta/Gabriel.aspx");
        }
    }
}