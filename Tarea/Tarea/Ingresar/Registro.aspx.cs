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

<<<<<<< HEAD
        }        
=======
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegistroExitoso.aspx");
        }

        protected void CreateUserWizard1_ContinueButtonClick(object sender, EventArgs e)
        {
            Response.Redirect("Carreras.aspx");
        }
>>>>>>> b4c0b0de0a543fa4aeaf7c7276f10164ec9f88e3
    }
}