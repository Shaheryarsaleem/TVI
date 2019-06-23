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
    public partial class ViewE : System.Web.UI.Page
    {
        public SqlConnection conn = new SqlConnection(@"Data Source=.;Initial Catalog=TVI;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //if (DropDownList1.AutoPostBack)
            //{
            //    string connstr = "Data Source=.;Initial Catalog=TVI;Integrated Security=True";
            //    SqlConnection conn = new SqlConnection(connstr);
            //    conn.Open();


            //    SqlCommand cmd = new SqlCommand("SELECT [Q1], [a1],[Q2], [a2], [Q3], [a3], [Q4] ,[a4],[Q5],[a5],[Q6], [a6], [Q7],[a7],[Q8],[a8] ,[Q9] ,[a9] ,[Q10A] ,[a10a] ,[Q10B] ,[a10b] ,[Q10C] ,[a10c] ,[Q11] ,[a11],[Q12],[a12],[Q13],[a13],[Q14] ,[a14] ,[Q15] ,[a15] ,  [Q16A] ,[a16a] ,[Q16B] ,[a16b] ,[Q16C] ,[a16c] ,[Q17] ,[a17] ,[Q18] ,[a18] ,[Q19] ,[a19] ,[Q20] ,[a20] FROM [dbo].[FormA]");
            //    cmd.CommandType = System.Data.CommandType.Text;
            //    cmd.Connection = conn;

            //    string temp = "";


            //    SqlDataReader reader = cmd.ExecuteReader();
            //    while (reader.Read())
            //    {
            //        temp += reader["Q1"].ToString();
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += reader["a1"].ToString();
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += reader["Q2"].ToString();
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += reader["a2"].ToString();
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += reader["Q3"].ToString();
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += reader["a3"].ToString();
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += reader["Q4"].ToString();
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += reader["a4"].ToString();
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += reader["Q5"].ToString();
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += reader["a5"].ToString();
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += reader["Q6"].ToString();
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += reader["a6"].ToString();
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += reader["Q7"].ToString();
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += reader["a7"].ToString();
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += reader["Q8"].ToString();
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += reader["a8"].ToString();
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += reader["Q9"].ToString();
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += reader["a9"].ToString();
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += reader["Q10A"].ToString();
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += reader["a10a"].ToString();
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += reader["Q10B"].ToString();
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += reader["a10b"].ToString();
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += reader["Q10C"].ToString();
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += reader["a10c"].ToString();
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += reader["Q11"].ToString();
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += reader["a11"].ToString();
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += reader["Q12"].ToString();
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += reader["a12"].ToString();
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += reader["Q13"].ToString();
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += reader["a13"].ToString();
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += reader["Q14"].ToString();
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += reader["a14"].ToString();
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += reader["Q15"].ToString();
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += reader["a15"].ToString();
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += reader["Q16A"].ToString();
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += reader["a16a"].ToString();
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += reader["Q16B"].ToString();
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += reader["a16b"].ToString();
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += reader["Q16C"].ToString();
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += reader["a16c"].ToString();
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += reader["Q17"].ToString();
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += reader["a17"].ToString();
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += reader["Q18"].ToString();
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += reader["a18"].ToString();
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += reader["Q19"].ToString();
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += reader["a19"].ToString();
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += reader["Q20"].ToString();
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += "<br/>";
            //        temp += reader["a20"].ToString();
            //        temp += "<br/>";
            //        temp += "<br/>";


            //    }

            //    conn.Close();

            //    Label1.Text = temp;
            //}
            //else
            //{
            //    Label1.Text = "";
            //}


            SqlCommand com;
            string str;
            conn.Open();
            str = "select * from FormE where id='" + regnum.Text.Trim() + "'";
            com = new SqlCommand(str, conn);



            SqlDataReader reader = com.ExecuteReader();
            if (reader.Read())
            {
                Label2.Text = reader["Q1"].ToString();
                Label3.Text = reader["E1"].ToString();
                Label4.Text = reader["Q2"].ToString();
                Label5.Text = reader["E2"].ToString();
                Label6.Text = reader["Q3"].ToString();
                Label7.Text = reader["E3"].ToString();
                Label8.Text = reader["Q4"].ToString();
                Label9.Text = reader["E4"].ToString();
                Label10.Text = reader["Q5"].ToString();
                Label11.Text = reader["E5"].ToString();
                Label12.Text = reader["Q6"].ToString();
                Label13.Text = reader["E6"].ToString();
                Label14.Text = reader["Q7"].ToString();
                Label15.Text = reader["E7"].ToString();
                Label16.Text = reader["Q8"].ToString();
                Label17.Text = reader["E8"].ToString();
                Label18.Text = reader["Q9"].ToString();
                Label19.Text = reader["E9"].ToString();
                Label20.Text = reader["Q10"].ToString();
                Label21.Text = reader["E10"].ToString();
                Label26.Text = reader["Q11"].ToString();
                Label27.Text = reader["E11"].ToString();
                Label28.Text = reader["Q12"].ToString();
                Label29.Text = reader["E12"].ToString();
                Label30.Text = reader["Q13"].ToString();
                Label31.Text = reader["E13"].ToString();
                Label32.Text = reader["Q14"].ToString();
                Label33.Text = reader["E14"].ToString();
                Label34.Text = reader["Q15"].ToString();
                Label35.Text = reader["E15"].ToString();
                Label36.Text = reader["Q16"].ToString();
                Label37.Text = reader["E16"].ToString();
                Label42.Text = reader["Q17"].ToString();
                Label43.Text = reader["E17"].ToString();
                Label44.Text = reader["Q18"].ToString();
                Label45.Text = reader["E18"].ToString();
                Label46.Text = reader["Q19"].ToString();
                Label47.Text = reader["E19"].ToString();
                Label48.Text = reader["Q20"].ToString();
                Label49.Text = reader["E20"].ToString();
                Label48.Text = reader["Q21"].ToString();
                Label49.Text = reader["E21"].ToString();
                Label48.Text = reader["Q22"].ToString();
                Label49.Text = reader["E22"].ToString();

                reader.Close();
                conn.Close();
            }
        }
    }
}