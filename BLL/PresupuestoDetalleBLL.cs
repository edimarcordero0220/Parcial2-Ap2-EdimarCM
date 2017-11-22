using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;
using DAL;

namespace BLL
{
    public class PresupuestoDetalleBLL
    {
        public static void Insertar(PresupuestoDetalle pd)
        {
            try
            {
                Parcial2Db db = new Parcial2Db();
                db.detalle.Add(pd);
                db.SaveChanges();
                db.Dispose();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public static List<PresupuestoDetalle> GetLista()
        {
            List<PresupuestoDetalle> lista = new List<PresupuestoDetalle>();
            Parcial2Db db = new Parcial2Db();
            lista = db.detalle.ToList();
            return lista;

        }
        public static void Eliminar(int v)
        {
            Parcial2Db db = new Parcial2Db();
            PresupuestoDetalle cl = db.detalle.Find(v);

            db.detalle.Remove(cl);
            db.SaveChanges();
        }
        public static PresupuestoDetalle Buscar(int Id)
        {
            Parcial2Db db = new Parcial2Db();
            return db.detalle.Find(Id);
        }
    }
}
