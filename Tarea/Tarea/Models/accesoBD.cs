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
        public void AddLike(int idprofe, String nombreusuario)
        {
            var cadena = ConfigurationManager.ConnectionStrings["ConeccionSprofe"];

            using (var conexion = new SqlConnection(cadena.ConnectionString))
            {
                var query = $"UPDATE profesores SET likes = likes + 1 WHERE idprofesor = {idprofe}";
                var query2 = $"UPDATE valoraciones SET liked = 1 Where idprofe = '{idprofe}' and nombreusuario='{nombreusuario}'";

                SqlCommand command = new SqlCommand(query, conexion);
                SqlCommand command2 = new SqlCommand(query2, conexion);

                command.Connection.Open();
                command.ExecuteNonQuery();                
                command2.ExecuteNonQuery();
            }


        }

        public void RemoveLike(int idprofe, String nombreusuario)
        {
            var cadena = ConfigurationManager.ConnectionStrings["ConeccionSprofe"];

            using (var conexion = new SqlConnection(cadena.ConnectionString))
            {
                var query = $"UPDATE profesores SET likes = likes - 1 WHERE idprofesor = {idprofe}";
                var query2 = $"UPDATE valoraciones SET liked = 0 Where idprofe = '{idprofe}' and nombreusuario='{nombreusuario}'";

                SqlCommand command = new SqlCommand(query, conexion);
                SqlCommand command2 = new SqlCommand(query2, conexion);

                command.Connection.Open();
                command.ExecuteNonQuery();
                command2.ExecuteNonQuery();
            }
        }

        public Boolean verificarLike(int idprofe, String nombreusuario)
        {            
            var valoracion = new Valoracion();
            var vacio = true;            
            var cadena = ConfigurationManager.ConnectionStrings["ConeccionSprofe"];                        

            using (var conexion = new SqlConnection(cadena.ConnectionString))
            {
                conexion.Open();                
                var query = $"SELECT * FROM valoraciones WHERE idprofe = '{idprofe}' and nombreusuario = '{nombreusuario}'";

                using(var comando = new SqlCommand(query, conexion))
                {
                    using(var reader = comando.ExecuteReader())
                    {
                        while (reader.Read())
                        {                            
                            valoracion = new Valoracion();                            
                            valoracion.Idprofesor = Convert.ToInt32(reader[0]);
                            valoracion.Idusuario = reader[1].ToString();
                            valoracion.Liked = Convert.ToInt32(reader[2]);
                            vacio = false;
                        }                                               
                    }
                }

                if (vacio)
                {                                                   
                    var insert = $"INSERT INTO valoraciones Values('{idprofe}','{nombreusuario}', 0)";
                    using(var command = new SqlCommand(insert, conexion))
                    {
                        command.ExecuteNonQuery();
                    }
                    return false;
                }
                else
                {
                    if (valoracion.Liked == 0)
                    {
                        return false;
                    }
                    else
                    {
                        return true;
                    }

                }
            }                      
        }
    }
}