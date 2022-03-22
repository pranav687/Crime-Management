﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebClient
{
    public partial class ViewAll : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                DataSet ds = new DataSet();
                var svc = new ServiceReference1.Service1Client();
                ds = svc.getItems();
                grdEmployees.DataSource = ds;
                grdEmployees.DataBind();
            }
        }
        protected void BackHome(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }
    }
}