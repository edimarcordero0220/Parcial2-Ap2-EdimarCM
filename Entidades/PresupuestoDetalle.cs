using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class PresupuestoDetalle
    {
        [Key]
        public int Id { get; set; }
        public int PresupuestoId { get; set; }
        public string Descripcion { get; set; }
        public int Meta { get; set; }
        public int Logrado { get; set; }
    }
}
