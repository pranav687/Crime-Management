using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebClient
{
    public partial class Update : System.Web.UI.Page
    {
        DataSet ds;
      
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                SetPanel(true, false);
            }
        }
        protected void BtnSearch_Click(object sender, EventArgs e)
        {
            if (txtSearch.Text != "")
            {
                int id = Int16.Parse(txtSearch.Text);
                var svc = new ServiceReference1.Service1Client();
                ds = new DataSet();
                ds = svc.SearchItem(id);

                if (ds.Tables[0].Rows.Count > 0)
                {
                    name.Text = ds.Tables[0].Rows[0]["CriminalName"].ToString();
                    type.Text = ds.Tables[0].Rows[0]["CrimeType"].ToString();
                    age.Text = ds.Tables[0].Rows[0]["Age"].ToString();
                    gender.Text = ds.Tables[0].Rows[0]["Gender"].ToString();
                    address.Text = ds.Tables[0].Rows[0]["CrimeAddress"].ToString();
                    Cname.Text = ds.Tables[0].Rows[0]["Complaint"].ToString();
                    cdate.Text = ds.Tables[0].Rows[0]["CrimeDate"].ToString();
                    SetPanel(false, true);

                }
                else
                {
                    lblSearchResult.Text = "No such Criminal exists";
                    lblSearchResult.ForeColor = System.Drawing.Color.Red;
                }

            }
            else
            {
                lblSearchResult.Text = "Please Enter Criminal ID !";
            }
        }
        private void SetPanel(bool pSearch, bool pUpdate)
        {
            panSearch.Visible = pSearch;
            panUpdate.Visible = pUpdate;
        }
        protected void BntReset_Click(object sender, EventArgs e)
        {
            SetPanel(true, false);
        }

        protected void BtnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }
        protected void BntUpdated_Click(object sender, EventArgs e)
        {
            int id = Int16.Parse(txtSearch.Text);
            string Criminalname = name.Text;
            string Crimetype = type.Text;
            string Criminalage = age.Text;
            string Criminalgender = gender.Text;
            string Crimeaddress = address.Text;
            string Complaintname = Cname.Text;
            string Crimedate = cdate.Text;
            DateTime Cdate = Convert.ToDateTime(Crimedate);
            var svc = new ServiceReference1.Service1Client();
            string res = svc.UpdateItem(Criminalname, Crimetype, Criminalage, Criminalgender, Crimeaddress, Complaintname, Cdate, id);
            lblSearchResult.Text = "Successfully Updated";
            SetPanel(true, false);
            name.Text = "";
            type.Text ="";
            age.Text = "";
            gender.Text = "";
            address.Text = "";
            Cname.Text = "";
            cdate.Text = "";

        }
    }
}