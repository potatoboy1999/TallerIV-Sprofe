using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tarea
{
    public partial class startSearch : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtbuscador.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Profesores.aspx?codigocurso=" + ddlCursos.SelectedValue);
        }

        protected void ddlCarreras_SelectedIndexChanged(object sender, EventArgs e)
        {
            sdsCursos.SelectCommand = "SELECT cursos.nombre, cursos.idcurso " +
                "FROM cursooncarrera " +
                "INNER JOIN carreras ON carreras.idcarrera = cursooncarrera.idcarrera " +
                "INNER JOIN cursos ON cursooncarrera.idcurso = cursos.idcurso " +
                "WHERE (carreras.nombrecarrera = '" + ddlCarreras.SelectedValue + "')";
            sdsCursos.DataBind();
        }

        protected void buscar_Click(object sender, EventArgs e)
        {
            var profesor = txtbuscador.Text.ToUpper();
            var idprofesor = 0;
            var cadena = ConfigurationManager.ConnectionStrings["ConeccionSprofe"];
            using (var conexion = new SqlConnection(cadena.ConnectionString))
            {
                conexion.Open();
                var query = $"SELECT idprofesor FROM profesores WHERE UPPER(nombre) = '{profesor}' or UPPER(apellido_paterno)='{profesor}'";

                using (var comando = new SqlCommand(query, conexion))
                {
                    using (var reader = comando.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            idprofesor = Convert.ToInt32(reader[0]);
                        }
                    }
                }
            }

            if (idprofesor == 0)
            {
                Sorry.Visible = true;
            }
            else
            {
                Response.Redirect("Profesor.aspx?codProf=" + idprofesor);
                
            }

        }

        protected void txtbuscador_TextChanged(object sender, EventArgs e)
        {
            var profesor = txtbuscador.Text.ToUpper();
            var idprofesor = 0;
            var cadena = ConfigurationManager.ConnectionStrings["ConeccionSprofe"];
            using (var conexion = new SqlConnection(cadena.ConnectionString))
            {
                conexion.Open();
                var query = $"SELECT idprofesor FROM profesores WHERE UPPER(nombre) = '{profesor}' or UPPER(apellido_paterno)='{profesor}'";

                using (var comando = new SqlCommand(query, conexion))
                {
                    using (var reader = comando.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            idprofesor = Convert.ToInt32(reader[0]);
                        }
                    }
                }
            }
            

            if (idprofesor == 0)
            {
                Sorry.Visible = true;
            }
            else
            {
                Response.Redirect("Profesor.aspx?codProf=" + idprofesor);
                
            }
            txtbuscador.Text = "";
        }
    }
}