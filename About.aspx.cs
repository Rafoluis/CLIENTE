using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;


namespace WebApplication1
{

    public partial class About : Page
    {

        int a, b, c;
        WebApplication1.ServiceReference2.WebService1SoapClient obj = new WebApplication1.ServiceReference2.WebService1SoapClient();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.BindGrid();
            }

        }

        protected void btnList_Click(object sender, EventArgs e)
        {
            String final;
            final = obj.Videogames_Select_Full();
            //DataTable dt = (DataTable)JsonConvert.DeserializeObject(final,typeof(DataTable));
            DataTable ds = JObject.Parse(final)["Table"].ToObject<DataTable>();
            //GridView1.DataSource = ds;
            //GridView1.DataBind();

        }

        protected void BindGrid()
        {
            String final;
            final = obj.Videogames_Select_Full();
            DataTable ds = JObject.Parse(final)["Table"].ToObject<DataTable>();
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void Insert(object sender, EventArgs e)
        {
            string iv = txtId.Text;
            string nombre = txtName.Text;
            string precio = txtPrecio.Text;
            string portada = txtPortada.Text;
            string fecha = txtFecha.Text;
            string genero = txtGenero.Text;
            string desarrollador = txtDesarrollador.Text;

            int num_iv = Int32.Parse(iv);
            int num_gen = Int32.Parse(genero);
            int num_desa = Int32.Parse(desarrollador);

            obj.INSERT_VIDEOGAME(num_iv, nombre, precio, portada, fecha, num_gen, num_desa);

            this.BindGrid();
        }

        protected void OnRowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            this.BindGrid();
        }

        protected void OnRowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            int VIDEOGAMESId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);

            string nombre = (row.FindControl("txtname") as TextBox).Text;
            string precio = (row.FindControl("txtpre") as TextBox).Text;
            string portada = (row.FindControl("txtpor") as TextBox).Text;
            string fecha = (row.FindControl("txtfecha") as TextBox).Text;
            string genero = (row.FindControl("txtgen") as TextBox).Text;
            string desarrollador = (row.FindControl("txtdesa") as TextBox).Text;
            int num_cel = Int32.Parse(genero);
            int num_edad = Int32.Parse(desarrollador);

            obj.UPDATE_VIDEOGAME(VIDEOGAMESId, nombre, precio, portada, fecha, num_cel, num_edad);

            GridView1.EditIndex = -1;
            this.BindGrid();
        }

        protected void OnRowCancelingEdit(object sender, EventArgs e)
        {
            GridView1.EditIndex = -1;
            this.BindGrid();
        }

        protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int VIDEOGAMESId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            obj.DELETE_CUSTOMER(VIDEOGAMESId);
            this.BindGrid();
        }


        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {

            /*
            protected void btnList_Click(object sender, EventArgs e)
            {
                String obj_client;
                a = Convert.ToInt32(TextBoxf.Text);
                obj_client = obj.Cliente_Select_Full(a);
                DataTable ds = JObject.Parse(obj_client)["Table"].ToObject<DataTable>();
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }*/

        }
    }

}