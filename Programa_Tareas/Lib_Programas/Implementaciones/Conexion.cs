using Lib_Programas.Entidades;
using Lib_Programas.Interfaces;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Aplicaciones_lib.Implementaciones
{
    public class Conexion : DbContext, IConexion
    {
        public String? StringConexion { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(this.StringConexion!, p => { });
            optionsBuilder.UseQueryTrackingBehavior(QueryTrackingBehavior.NoTracking);
        }
        public DbSet<Clientes>? Clientes { get; set; }
        public DbSet<Tareas>? Tareas { get; set; }
        public DbSet<Estado_Tareas>? Estado_Tareas { get; set; }
        public DbSet<Categoria_Tareas>? Categoria_Tareas { get; set; }
        public DbSet<Historial_Tareas>? Historial_Tareas { get; set; }
        public DbSet<Tipo_Clientes>? Tipo_Clientes { get; set; }
    }
}
