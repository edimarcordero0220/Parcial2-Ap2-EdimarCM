using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.Text;
using System.Threading.Tasks;
using Entidades;
using System.Data.Entity;

namespace DAL
{
    public class Parcial2Db : DbContext
    {
        public Parcial2Db() : base("name=Constr")
        {
                
        }
        public virtual DbSet<Presupuestos>presupuesto { get; set; }
        public virtual DbSet<PresupuestoDetalle>detalle { get; set; }
    }
}
