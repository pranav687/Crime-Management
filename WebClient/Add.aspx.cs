using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebClient
{
    public partial class Add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //var svc = new ServiceReference1.Service1Client();
            //string abc = "dsdvvssvssvdsvs";

            //string aa = svc.AddCriminal(abc, abc, abc, abc, abc, abc, abc);

            //var s = svc.GetData(25);
            //datalabel.Text = s;
            
        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            if ((name.Text != "") || (type.Text != "") || (age.Text != "") || (gender.Text != "") || (address.Text != "") || (Cname.Text != "") || (cdate.Text != ""))
            {
                try
                {
                    string Criminalname = name.Text;
                    string Crimetype = type.Text;
                    string Criminalage = age.Text;
                    string Criminalgender = gender.Text;
                    string Crimeaddress = address.Text;
                    string Complaintname = Cname.Text;
                    string Crimedate = cdate.Text;
                    DateTime Cdate = Convert.ToDateTime(Crimedate);
                    var svc = new ServiceReference1.Service1Client();
                    String res = svc.AddCriminal(Criminalname, Crimetype, Criminalage, Criminalgender, Crimeaddress, Complaintname, Cdate);
                    Label1.Text = "Successfully Added";
                }
                catch (Exception ex)
                {
                    Label1.Text = ex.ToString();
                }
               
            }
            else
            {

                Label1.Text = "All fields are mandatory! ";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void BntReset_Click(object sender, EventArgs e)
        {
            name.Text = "";
            type.Text = "";
            age.Text = "";
            gender.Text = "";
            address.Text = "";
            cdate.Text = "";
            Cname.Text = "";
        }
        protected void BtnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }
        protected void BtnCancel_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Add.aspx");
        }
    }
}