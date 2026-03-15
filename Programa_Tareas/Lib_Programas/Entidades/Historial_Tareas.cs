using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lib_Programas.Entidades
{
    public class Historial_Tareas
    {
        public int Id { get; set; }
        public decimal Cantidad { get; set; }
        public DateTime Fecha_Inicio { get; set; }
        public DateTime Fecha_Fin { get; set; }
        public bool activo { get; set; }
    }
}
