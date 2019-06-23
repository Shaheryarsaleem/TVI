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
    public partial class ViewD : System.Web.UI.Page
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
            str = "select * from FormD where id='" + regnum.Text.Trim() + "'";
            com = new SqlCommand(str, conn);



            SqlDataReader reader = com.ExecuteReader();
            if (reader.Read())
            {
                Label2.Text = reader["Q1"].ToString();
                Label3.Text = reader["D1"].ToString();
                Label4.Text = reader["Q2"].ToString();
                Label5.Text = reader["D2"].ToString();
                Label6.Text = reader["Q3"].ToString();
                Label7.Text = reader["D3"].ToString();
                Label8.Text = reader["Q4"].ToString();
                Label9.Text = reader["D4"].ToString();
                Label10.Text = reader["Q5"].ToString();
                Label11.Text = reader["D5"].ToString();
                Label12.Text = reader["Q6"].ToString();
                Label13.Text = reader["D6"].ToString();
                Label14.Text = reader["Q7"].ToString();
                Label15.Text = reader["D7"].ToString();
                Label16.Text = reader["Q8"].ToString();
                Label17.Text = reader["D8"].ToString();
                Label18.Text = reader["Q9"].ToString();
                Label19.Text = reader["D9"].ToString();
                Label20.Text = reader["Q10"].ToString();
                Label21.Text = reader["D10"].ToString();
                Label26.Text = reader["Q11"].ToString();
                Label27.Text = reader["D11"].ToString();
                Label28.Text = reader["Q12"].ToString();
                Label29.Text = reader["D12"].ToString();
                Label30.Text = reader["Q13"].ToString();
                Label31.Text = reader["D13"].ToString();
                Label32.Text = reader["Q14"].ToString();
                Label33.Text = reader["D14"].ToString();
                Label34.Text = reader["Q15"].ToString();
                Label35.Text = reader["D15"].ToString();
                Label36.Text = reader["Q16"].ToString();
                Label37.Text = reader["D16"].ToString();
                Label42.Text = reader["Q17"].ToString();
                Label43.Text = reader["D17"].ToString();
                Label44.Text = reader["Q18"].ToString();
                Label45.Text = reader["D18"].ToString();
                Label46.Text = reader["Q19"].ToString();
                Label47.Text = reader["D19"].ToString();
                Label48.Text = reader["Q20"].ToString();
                Label49.Text = reader["D20"].ToString();
                Label48.Text = reader["Q21"].ToString();
                Label49.Text = reader["D21"].ToString();
                Label48.Text = reader["Q22"].ToString();
                Label49.Text = reader["D22"].ToString();

                reader.Close();
                conn.Close();
            }
        }

    }
}