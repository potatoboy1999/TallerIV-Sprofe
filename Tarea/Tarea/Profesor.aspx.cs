using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tarea
{
    public partial class Profesor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnComentar_Click(object sender, EventArgs e)
        {

        }

        protected void fvComentarios_ItemInserting(object sender, FormViewInsertEventArgs e)
        {
            var idProfe = Request.QueryString["codProf"];
            var idUser = Membership.GetUser().ProviderUserKey;
            var val = "Positivo";

            e.Values["idprofesor"] = idProfe;
            e.Values["idusuario"] = idUser;
            e.Values["valoración"] = val;
            
        }

        protected void fvComentarios_ItemInserted(object sender, FormViewInsertedEventArgs e)
        {
            var idProfe = Request.QueryString["codProf"];
            Response.Redirect("Profesor.aspx?codProf=" + idProfe + "#comentarios");
        }

        protected void sdsComentarios_Selected(object sender, SqlDataSourceStatusEventArgs e)
        {
            if (e.AffectedRows == 0)
            {
                pNodata.Visible = true;
            }
        }
    }
}