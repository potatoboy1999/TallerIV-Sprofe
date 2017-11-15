using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tarea
{
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }                       

        protected void CreateUserWizard1_ContinueButtonClick1(object sender, EventArgs e)
        {
            Response.Redirect("Carreras.aspx");
        }
    }
}