using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;
using DAL;

namespace BLL
{
    public class PresupuestoBLL
    {
       

        public static void Insertar(Presupuestos p)
        {
            try
            {
                Parcial2Db db = new Parcial2Db();
                db.presupuesto.Add(p);
                db.SaveChanges();
                db.Dispose();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public static List<Presupuestos> GetLista()
        {
            List<Presupuestos> lista = new List<Presupuestos>();
            Parcial2Db db = new Parcial2Db();
            lista = db.presupuesto.ToList();
            return lista;

        }
        public static void Eliminar(int v)
        {
            Parcial2Db db = new Parcial2Db();
            Presupuestos cl = db.presupuesto.Find(v);

            db.presupuesto.Remove(cl);
            db.SaveChanges();
        }
        public static Presupuestos Buscar(int Id)
        {
            Parcial2Db db = new Parcial2Db();
            return db.presupuesto.Find(Id);
        }
    }
}
