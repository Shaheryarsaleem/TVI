using System;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace TVIProject
{
    public partial class ViewB : System.Web.UI.Page
    {
        public SqlConnection conn = new SqlConnection(@"Data Source=.;Initial Catalog=TVI;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand com;
            string str;
            conn.Open();
            str = "select * from FormB where id='" + regnum.Text.Trim() + "'";
            com = new SqlCommand(str, conn);

            SqlDataReader reader = com.ExecuteReader();
            if (reader.Read())
            {
                Label1.Text = reader["Q1"].ToString();
                Label2.Text = reader["b1"].ToString();
                Label3.Text = reader["Q2"].ToString();
                Label4.Text = reader["b2"].ToString();
                Label3.Text = reader["Q3"].ToString();
                Label4.Text = reader["b3"].ToString();

                reader.Close();
                conn.Close();
            }
        }
    }
}