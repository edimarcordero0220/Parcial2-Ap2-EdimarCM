using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using System.Data;

namespace Parcial2_Ap2_EdimarCM.Consulta
{
    public partial class cPresupuestos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            Presupuestos presupuesto = new Presupuestos();
            DataTable dataTable = new DataTable();
           
        }
    }
}