using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;


namespace TVIProject
{
    public partial class FoamB : System.Web.UI.Page
    {
        string strConnString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlCommand com;    
        protected void Page_Load(object sender, EventArgs e)
        {

            #region Login
            if (Session["username"] == null)
            {
                Response.Redirect("~/Admin.aspx");
            }
            else
            {
                lbluser.Text = "Welcome" + " " + Session["username"].ToString();
            }
            #endregion

            string connstr = "Data Source=.;Initial Catalog=TVI;Integrated Security=True";
            SqlConnection conn = new SqlConnection(connstr);
            conn.Open();


            //SqlCommand cmd = new SqlCommand("SELECT [id] FROM [dbo].[FormA]");
            SqlCommand cmd = new SqlCommand("SELECT * from FormB where id =(select max(id) from FormA)");
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.Connection = conn;

            string temp = "";
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                temp += reader["id"].ToString();

            }

            conn.Close();

            Label25.Text = temp;
        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {

            Response.Redirect("~/Admin.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            #region Insert


            if (CheckBox1.Checked == true)
            {
                SqlConnection con = new SqlConnection(strConnString);
                com = new SqlCommand();
                com.Connection = con;
                com.CommandType = CommandType.Text;
                com.CommandText = "insert into FormB (Q1,b1,Q2,b2,Q3,b3) values(@Q1,@b1,@Q2,@b2,@Q3,@b3)";
                com.Parameters.Clear();

                


                com.Parameters.Add("b1", System.Data.SqlDbType.NVarChar, 500).Value = TextBox1.Text;
                com.Parameters.Add("b2", System.Data.SqlDbType.NVarChar, 500).Value = TextBox2.Text;

                com.Parameters.AddWithValue("b3", DropDownList1.SelectedItem.Value);  //DropDownList1
                


                com.Parameters.Add("Q1", System.Data.SqlDbType.NVarChar, 500).Value = Label1.Text;
                com.Parameters.Add("Q2", System.Data.SqlDbType.NVarChar, 500).Value = Label2.Text;
                com.Parameters.Add("Q3", System.Data.SqlDbType.NVarChar, 500).Value = Label3.Text;
                


                if (con.State == ConnectionState.Closed)
                    con.Open();
                com.ExecuteNonQuery();
                con.Close();
                //lblmsg.Text = "Data entered successfully!!!";
                lbmsg.Text = "Data entered successfully!!!";
                clear();
            }
            else
            {
                SqlConnection con = new SqlConnection(strConnString);
                com = new SqlCommand();
                com.Connection = con;
                com.CommandType = CommandType.Text;
                com.CommandText = "insert into FormB (Q1,b1,Q2,b2,Q3,b3) values(@Q1,@b1,@Q2,@b2,@Q3,@b3)";
                com.Parameters.Clear();




                com.Parameters.Add("b1", System.Data.SqlDbType.NVarChar, 500).Value = TextBox1.Text;
                com.Parameters.Add("b2", System.Data.SqlDbType.NVarChar, 500).Value = TextBox2.Text;

                com.Parameters.AddWithValue("b3", DropDownList1.SelectedItem.Value);  //DropDownList1



                com.Parameters.Add("Q1", System.Data.SqlDbType.NVarChar, 500).Value = Label1.Text;
                com.Parameters.Add("Q2", System.Data.SqlDbType.NVarChar, 500).Value = Label2.Text;
                com.Parameters.Add("Q3", System.Data.SqlDbType.NVarChar, 500).Value = Label3.Text;



                if (con.State == ConnectionState.Closed)
                    con.Open();
                com.ExecuteNonQuery();
                con.Close();
                //lblmsg.Text = "Data entered successfully!!!";
                lbmsg.Text = "Data entered successfully!!!";
                clear();

                if (con.State == ConnectionState.Closed)
                    con.Open();
                com.ExecuteNonQuery();
                con.Close();

                lbmsg.Text = "Data entered successfully!!!";
                clear();
            }

            #endregion
        }

        void clear()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            

            CheckBox1.Checked = false;
           
        }
        }

        
    }
