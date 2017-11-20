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
                var query = $"UPDATE profesores SET likes = likes + 1 WHERE idprofesor = {idprofe}";

                SqlCommand command = new SqlCommand(query, conexion);
                command.Connection.Open();
                command.ExecuteNonQuery();
            }
        }
    }
}