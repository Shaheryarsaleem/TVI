using System;
using System.Web;
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
    public partial class ViewA : System.Web.UI.Page
    {
        public SqlConnection conn = new SqlConnection(@"Data Source=.;Initial Catalog=TVI;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        { 
        
        }

        protected void Button1_Click(object sender, System.EventArgs e)
        {
            SqlCommand com;
            string str;
            conn.Open();
            str = "select * from FormA where id='" + regnum.Text.Trim() + "'";
            com = new SqlCommand(str, conn);

           

            SqlDataReader reader = com.ExecuteReader();
            if (reader.Read())
            {
                Label2.Text = reader["Q1"].ToString();                
                Label3.Text = reader["a1"].ToString();        
                Label4.Text = reader["Q2"].ToString();                
                Label5.Text = reader["a2"].ToString();              
                Label6.Text = reader["Q3"].ToString();
                Label7.Text = reader["a3"].ToString();
                Label8.Text = reader["Q4"].ToString();
                Label9.Text = reader["a4"].ToString();
                Label10.Text = reader["Q5"].ToString();
                Label11.Text = reader["a5"].ToString();
                Label12.Text = reader["Q6"].ToString();
                Label13.Text = reader["a6"].ToString();
                Label14.Text = reader["Q7"].ToString();
                Label15.Text = reader["a7"].ToString();
                Label16.Text = reader["Q8"].ToString();
                Label17.Text = reader["a8"].ToString();
                Label18.Text = reader["Q9"].ToString();
                Label19.Text = reader["a9"].ToString();
                Label20.Text = reader["Q10A"].ToString();
                Label21.Text = reader["a10a"].ToString();
                Label22.Text = reader["Q10B"].ToString();
                Label23.Text = reader["a10b"].ToString();
                Label24.Text = reader["Q10C"].ToString();
                Label25.Text = reader["a10c"].ToString();
                Label26.Text = reader["Q11"].ToString();
                Label27.Text = reader["a11"].ToString();
                Label28.Text = reader["Q12"].ToString();
                Label29.Text = reader["a12"].ToString();
                Label30.Text = reader["Q13"].ToString();
                Label31.Text = reader["a13"].ToString();
                Label32.Text = reader["Q14"].ToString();
                Label33.Text = reader["a14"].ToString();
                Label34.Text = reader["Q15"].ToString();
                Label35.Text = reader["a15"].ToString();
                Label36.Text = reader["Q16A"].ToString();
                Label37.Text = reader["a16a"].ToString();
                Label38.Text = reader["Q16B"].ToString();
                Label39.Text = reader["a16b"].ToString();
                Label40.Text = reader["Q16C"].ToString();
                Label41.Text = reader["a16c"].ToString();
                Label42.Text = reader["Q17"].ToString();
                Label43.Text = reader["a17"].ToString();
                Label44.Text = reader["Q18"].ToString();
                Label45.Text = reader["a18"].ToString();
                Label46.Text = reader["Q19"].ToString();
                Label47.Text = reader["a19"].ToString();
                Label48.Text = reader["Q20"].ToString();
                Label49.Text = reader["a20"].ToString();

                reader.Close();
                conn.Close();
            }
            
        }
    }
}