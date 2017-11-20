using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Tarea.Models
{
    public class accesoBD
    {
        public void AddLike(int idprofe)
        {
            var cadena = ConfigurationManager.ConnectionStrings["ConeccionSprofe"];

            using (var conexion = new SqlConnection(cadena.ConnectionString))
            {
                conexion.Open();
                

                var query = $"UPDATE Profesores SET (likes = likes + 1) WHERE(idprofesor = {idprofe})";

                using (var comando = new SqlCommand(query, conexion))
                {
                    comando.ExecuteNonQuery();
                }
            }
        }
    }
}