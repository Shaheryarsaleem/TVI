using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;
using System.Configuration;

namespace TVIProject
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReg1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string str = ConfigurationManager.ConnectionStrings["TVi"].ConnectionString;
                using (SqlConnection con = new SqlConnection(str))
                {
                    SqlCommand com = new SqlCommand("spReguser", con);
                    
                    com.CommandType = CommandType.StoredProcedure;

                    string Encpassword = FormsAuthentication.HashPasswordForStoringInConfigFile(txtpswd.Text, "SHA1");

                    SqlParameter username = new SqlParameter("@username", txtuser.Text);
                    SqlParameter pass = new SqlParameter("@pass", Encpassword);
                    SqlParameter Email = new SqlParameter("@email", txtEmail.Text);

                    com.Parameters.Add(username);
                    com.Parameters.Add(pass);
                    com.Parameters.Add(Email);

                    con.Open();

                    int ReturnCode = (int)com.ExecuteScalar();

                    if (ReturnCode == -1)
                    {
                        lblmsg.Text = "Username Already Exists, Please Choose another name";
                    }
                    else
                    {
                        Response.Redirect("~/Admin.aspx");
                    }
                }

            }
        }
    }
}