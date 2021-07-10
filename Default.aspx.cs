using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class _Default : Page
    {
        WebApplication1.ServiceReference2.WebService1SoapClient obj = new WebApplication1.ServiceReference2.WebService1SoapClient();

        protected void validar_Click(object sender, EventArgs e)
        {
            string usu = v_usuario.Text;
            string contra = v_contra.Text;

            int num = obj.Login(usu, contra);
            if (num == 1)
            {
                Response.Redirect("About.aspx");
            }
            else
            {
                Response.Write("<script>alert('Contraseña Incorrecta')</script>");
            }
        }
    }
}