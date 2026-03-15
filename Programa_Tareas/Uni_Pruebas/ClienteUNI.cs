using Aplicaciones_lib.Implementaciones;
using Lib_Programas.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Uni_Pruebas
{
    [TestClass]
    public class ClienteUNI
    {
        [TestMethod]
        public void Ejecutar()
        {
            IConexion conexion = new Conexion();
            conexion.StringConexion = "server=N3UTR1N10-6DCC4\\DEV;Integrated Security=True;TrustServerCertificate=true;database=db_Tareas;";
            var lista = conexion.Clientes!.ToList();
            if (lista.Count > 0)
                return;
            throw new Exception();
        }
    }
}
