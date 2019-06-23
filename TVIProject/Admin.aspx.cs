using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;
using System.Web.UI.WebControls;

namespace TVIProject
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click_Click(object sender, EventArgs e)
        {
            if (AuthenticateUser(txtuser.Text, txtpassword.Text))
            {
                FormsAuthentication.RedirectFromLoginPage(txtuser.Text, chkremme.Checked);
                Session["username"] = txtuser.Text;
            }
            else
            {
                lblmsg.Text = "Invalid Username/Password";
            }
        }

        private bool AuthenticateUser(string username, string password)
        {
            string Constr = ConfigurationManager.ConnectionStrings["TVi"].ConnectionString;

            using (SqlConnection c = new SqlConnection(Constr))
            {
                SqlCommand comm = new SqlCommand("spauthenticateUser", c);
                //SqlCommand comm = new SqlCommand("spauthenticateUser", c);
                comm.CommandType = CommandType.StoredProcedure;
                string encpass = FormsAuthentication.HashPasswordForStoringInConfigFile(password, "SHA1");

                SqlParameter u = new SqlParameter("@username", txtuser.Text);
                SqlParameter p = new SqlParameter("@pass", encpass);

                comm.Parameters.Add(u);
                comm.Parameters.Add(p);

                c.Open();
                int ReturnCode = (int)comm.ExecuteScalar();

                return ReturnCode == 1;
            }
        }
    }
}