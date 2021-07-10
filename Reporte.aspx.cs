﻿using System;
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
using System.Data.Odbc;
using System.Configuration;
using System.Globalization;

namespace WebApplication1
{
    public partial class Reporte : System.Web.UI.Page
    {
        WebApplication1.ServiceReference2.WebService1SoapClient obj = new WebApplication1.ServiceReference2.WebService1SoapClient();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            String final;
            final = obj.Reporte_ventas(filt_in.Text);
            DataTable ds = JObject.Parse(final)["Table"].ToObject<DataTable>();
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }
}