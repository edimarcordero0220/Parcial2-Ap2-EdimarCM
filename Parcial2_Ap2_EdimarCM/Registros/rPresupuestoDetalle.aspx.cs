using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using DAL;
using BLL;

namespace Parcial2_Ap2_EdimarCM.Registros
{
    public partial class rPresupuestoDetalle : System.Web.UI.Page
    {
        System.Data.DataTable table;
        System.Data.DataRow row;
        Validar v = new Validar();
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (IsPostBack == false)
            {



                dt.Columns.AddRange(new DataColumn[3] { new DataColumn("Descripcion"), new DataColumn("Meta"), new DataColumn("Logrado") });
                ViewState["rPresupuestoDetalle"] = dt;
            }
        }
        public void Limpiar()
        {
            IDTextBox.Text = "";
            DescripcionTextBox.Text = "";
            MetaTextBox.Text = "";
            LogradoTextBox.Text = "";

        }
        public void LlenarClase(PresupuestoDetalle pd)
        {

            //DetalleDiscos d = new DetalleDiscos();

           
            foreach (GridViewRow dr in GridView1.Rows)
             {
                 pd.Descripcion = dr.Cells[0].Text;
                 pd.Meta = Convert.ToInt32( dr.Cells[1].Text);
                 pd.Logrado = Convert.ToInt32(dr.Cells[2].Text);
            }
            //foreach (GridViewRow dr in GridView1.Rows)
            //{
            //    Discos p = new Discos();
            //    p.AgregarDetalle(d.Cancion = dr.Cells[0].Text, d.DuraciondelaCancion = dr.Cells[1].Text);
            //}

        }
        protected void BindGrid()
        {
            GridView1.DataSource = (DataTable)ViewState["rPresupuestoDetalle"];
            GridView1.DataBind();
        }
        protected void GuardarButton_Click(object sender, EventArgs e)
        {
            if (IDTextBox.Text == "" || DescripcionTextBox.Text == ""||MetaTextBox.Text=="" || LogradoTextBox.Text=="")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script>alert('Debes Llenar Todos los campos Señalado con (*)');</script>");
            }
            else
            {
                Entidades.PresupuestoDetalle detalle = new Entidades.PresupuestoDetalle();
                LlenarClase(detalle);
                PresupuestoDetalleBLL.Insertar(detalle);
                Limpiar();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script>alert('Guardo');</script>");
            }
        }

        protected void AgregarButton_Click(object sender, EventArgs e)
        {
            if (MetaTextBox.Text=="" || LogradoTextBox.Text=="")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script>alert('Debes Llenar Ambos Campos(Meta y Logrado)');</script>");
            }
            else
            {
                DataTable dt = (DataTable)ViewState["rPresupuestoDetalle"];
                dt.Rows.Add(DescripcionTextBox.Text, MetaTextBox.Text, LogradoTextBox.Text);
                ViewState["rPResupuestoDetalle"] = dt;
                this.BindGrid();
            }
           
        }
        public void BuscarPresupuesto(Presupuestos p)
        {
            IDTextBox.Text = p.PresupuestoId.ToString();
            DescripcionTextBox.Text = p.Descripcion;

        }
        protected void Buscar1Button_Click(object sender, EventArgs e)
        {
            BuscarPresupuesto(PresupuestoBLL.Buscar(v.String(IDTextBox.Text)));
        }

        protected void NuevoButton_Click(object sender, EventArgs e)
        {
            Limpiar();
        }
        public void BuscarDetalle(PresupuestoDetalle pd)
        {
            iddetalleTextBox.Text = pd.Id .ToString();

            


        }
        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            BuscarDetalle(DetalleDiscoBLL.Buscar(v.String(detalleTextBox.Text)));
        }
    }
}