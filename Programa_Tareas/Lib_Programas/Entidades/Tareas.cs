using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lib_Programas.Entidades
{
    public class Tareas
    {
        public int Id { get; set; }
        public string? Descripcion_Tarea { get; set; }
        public DateTime Fecha_Inicio { get; set; }
        public DateTime Fecha_Fin { get; set; }
        public string? Estado { get; set; }
        public string? Prioridad { get; set; }
    }
}
