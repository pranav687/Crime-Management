using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebClient
{
    public partial class Delete : System.Web.UI.Page
    {
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnDelete_Click(object sender, EventArgs e)
        {
            int cid = Int16.Parse(id.Text);
            string cname = name.Text;
            var svc = new ServiceReference1.Service1Client();
            ds = new DataSet();
            ds = svc.SearchItem(cid);

            if (ds.Tables[0].Rows.Count > 0)
            {
                string name = ds.Tables[0].Rows[0]["CriminalName"].ToString();
                if (name == cname)
                {
                    string res = svc.DeleteItem(cid);
                    Label1.Text = "Deleted SuccessFully";
                }
                else
                {
                    Label1.Text = "Criminal Id and Name Not Match";
                }
            }
            else
            {
                Label1.Text = "Criminal Notexist";
            }
        }
        protected void BackHome(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }
    }
}