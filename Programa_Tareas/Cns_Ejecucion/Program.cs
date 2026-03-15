using Aplicaciones_lib.Implementaciones;
using Lib_Programas.Entidades;
using Lib_Programas.Interfaces;

Console.WriteLine("cns_presentacion");

Console.WriteLine("Conexion de Base de datos");
IConexion conexion = new Conexion();
conexion.StringConexion = "server=N3UTR1N10-6DCC4\\DEV;Integrated Security=True;TrustServerCertificate=true;database=db_Tareas;";
var lista_Clientes = conexion.Clientes!.ToList();
var lista_Tareas = conexion.Tareas!.ToList();
var lista_Estado_Tareas = conexion.Estado_Tareas!.ToList();
var Categoria_Tareas = conexion.Categoria_Tareas!.ToList();
var Historial_Tareas = conexion.Historial_Tareas!.ToList();
var Tipo_Clientes = conexion.Tipo_Clientes!.ToList();
Console.WriteLine("Final");