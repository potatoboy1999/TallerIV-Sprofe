using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tarea
{
    public partial class startSearch : System.Web.UI.Page
    {
        private string codigocurso;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {            
            Response.Redirect("Profesores.aspx?codigocurso="+ddlCursos.SelectedValue);
        }

        protected void ddlCarreras_SelectedIndexChanged(object sender, EventArgs e)
        {
            sdsCursos.SelectCommand = "SELECT cursos.nombre " +
                "FROM cursooncarrera " +
                "INNER JOIN carreras ON carreras.idcarrera = cursooncarrera.idcarrera " +
                "INNER JOIN cursos ON cursooncarrera.idcurso = cursos.idcurso " +
                "WHERE (carreras.nombrecarrera = '"+ ddlCarreras.SelectedValue +"')";
            sdsCursos.DataBind();
        }   
        
    }
}