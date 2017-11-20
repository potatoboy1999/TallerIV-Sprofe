using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Tarea.Models;

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

            var idProfe = Convert.ToInt32(Request.QueryString["codProf"]);
            var usuario = Page.User.Identity.Name;
            var fvComentario = (RadioButtonList)((FormView)sender).FindControl("rblValoracion");
            var val = fvComentario.SelectedValue;
            
            e.Values["idprofesor"] = idProfe;
            e.Values["usuarionombre"] = usuario;
            e.Values["valoracion"] = val;

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

        protected void btnLike_Click(object sender, EventArgs e)
        {
            accesoBD datos = new accesoBD();
            var idProf = Convert.ToInt32(Request.QueryString["codProf"]);
            datos.AddLike(idProf);
            Response.Redirect("Profesor.aspx?codProf=" + idProf + "#");
        }
    }
}