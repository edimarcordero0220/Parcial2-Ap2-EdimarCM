using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using DAL;
using BLL;

namespace Parcial2_Ap2_EdimarCM.Registros
{
    public partial class rPresupuesto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.FechaTextBox.Text = string.Format("{0:G}", DateTime.Now);
        }
        public void LlenarClase(Presupuestos p)
        {
            p.Descripcion = DescripcionTextBox.Text;
            p.Fecha = Convert.ToDateTime(FechaTextBox.Text);
            p.Monto = Convert.ToInt32(MontoTextBox.Text);

        }
        protected void GuardarButton_Click(object sender, EventArgs e)
        {
            if ( MontoTextBox.Text == "" || DescripcionTextBox.Text == "")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script>alert('Debes Llenar Todos los campos Señalado con (*)');</script>");
            }
            else
            {
                Entidades.Presupuestos presu = new Entidades.Presupuestos();
                LlenarClase(presu);
                PresupuestoBLL.Insertar(presu);
                Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script>alert('Realizado satisfactoriamente');</script>");
            }
            }
    }
}