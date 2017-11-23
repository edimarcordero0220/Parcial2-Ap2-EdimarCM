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
        Validar v = new Validar();
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
                Limpiar();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script>alert('Realizado satisfactoriamente');</script>");
            }
            }
       
        public void Buscarpresupuesto(Presupuestos p)
        {
            idpreTextBox.Text = p.PresupuestoId.ToString();

            p.Fecha = Convert.ToDateTime(FechaTextBox.Text);
            p.Descripcion = DescripcionTextBox.Text;
          
           


        }
        public void Limpiar()
        {
            DescripcionTextBox.Text = "";
            MontoTextBox.Text = "";
        }

        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            if (idpreTextBox.Text == "")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script>alert('Llene el campo Id');</script>");
            }
            else
            {
              Buscarpresupuesto(PresupuestoBLL.Buscar(v.String(idpreTextBox.Text)));
            }
            
        }

        protected void NuevoButton_Click(object sender, EventArgs e)
        {
            Limpiar();
        }
    }
}