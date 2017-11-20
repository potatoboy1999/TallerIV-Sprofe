using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Tarea.Models
{
    public class Profesor
    {
        public int idprofesor { get; set; }
        public String nombre { get; set; }
        public String apellido { get; set; }
        public String descripcion { get; set; }
        public String imagen { get; set; }
        public String puntaje { get; set; }
        public String likes { get; set; }
    }
}