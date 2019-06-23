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
    public partial class FoamF : System.Web.UI.Page
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


            // Retrieve Form Number
            string connstr = "Data Source=.;Initial Catalog=TVI;Integrated Security=True";
            SqlConnection conn = new SqlConnection(connstr);
            conn.Open();


            SqlCommand cmd = new SqlCommand("SELECT * from FormF where id =(select max(id) from FormF)");
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.Connection = conn;

            string temp = "";
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                temp += reader["id"].ToString();

            }

            conn.Close();

            Label33.Text = temp;
        }

        protected void Index_Changed(object sender, EventArgs e)
        {
          

        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Session["username"] = null;
            Response.Redirect("~/Admin.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            #region Insert


            if (CheckBox22.Checked == true)
            {
                SqlConnection con = new SqlConnection(strConnString);
                com = new SqlCommand();
                com.Connection = con;
                com.CommandType = CommandType.Text;
                com.CommandText = "insert into FormF (Q1,F1,Q2,F2,Q3,F3,Q4,F4,Q5,F5,Q6,F6,Q7,F7,Q8,F8,Q9,F9,Q10a,F10a,Q10b,F10b,Q10c,F10c,Q11a,F11a,Q11b,F11b,Q11c,F11c,Q12a,F12a,Q12b,F12b,Q12c,F12c,Q13a,F13a,Q13b,F13b,Q13c,F13c,Q14a,F14a,Q14b,F14b,Q14c,F14c,Q15a,F15a,Q15b,F15b,Q15c,F15c,Q16,F16,Q17,F17,Q18,F18,Q19,F19,Q20,F20) values (@Q1,@F1,@Q2,@F2,@Q3,@F3,@Q4,@F4,@Q5,@F5,@Q6,@F6,@Q7,@F7,@Q8,@F8,@Q9,@F9,@Q10a,@F10a,@Q10b,@F10b,@Q10c,@F10c,@Q11a,@F11a,@Q11b,@F11b,@Q11c,@F11c,@Q12a,@F12a,@Q12b,@F12b,@Q12c,@F12c,@Q13a,@F13a,@Q13b,@F13b,@Q13c,@F13c,@Q14a,@F14a,@Q14b,@F14b,@Q14c,@F14c,@Q15a,@F15a,@Q15b,@F15b,@Q15c,@F15c,@Q16,@F16,@Q17,@F17,@Q18,@F18,@Q19,@F19,@Q20,@F20)";
                com.Parameters.Clear();



                //CheckBox

                com.Parameters.AddWithValue("@F4", CheckBox23.Text + "," + CheckBox24.Text);
                com.Parameters.AddWithValue("@F5", CheckBox25.Text + "," + CheckBox5.Text + "," + CheckBox26.Text + "," + CheckBox7.Text + "," + CheckBox27.Text + "," + CheckBox28.Text);
                com.Parameters.AddWithValue("@F7", CheckBox33.Text + "," + CheckBox34.Text + "," + CheckBox35.Text + "," + CheckBox36.Text + "," + CheckBox37.Text+ "," + CheckBox38.Text+ "," + CheckBox41.Text+ "," + CheckBox40.Text);
                com.Parameters.AddWithValue("@F8", CheckBox29.Text + "," + CheckBox12.Text + "," + CheckBox30.Text + "," + CheckBox14.Text);
                com.Parameters.AddWithValue("@F20", CheckBox15.Text + "," + CheckBox16.Text + "," + CheckBox31.Text + "," + CheckBox32.Text + "," + CheckBox19.Text + "," + CheckBox20.Text);
                


                //DropDownList

                com.Parameters.AddWithValue("F1", DropDownList1.SelectedItem.Value);  
                com.Parameters.AddWithValue("F3", DropDownList2.SelectedItem.Value);                 
                com.Parameters.AddWithValue("F6", DropDownList3.SelectedItem.Value);      
                com.Parameters.AddWithValue("F9", DropDownList5.SelectedItem.Value);  
                com.Parameters.AddWithValue("F10a", DropDownList6.SelectedItem.Value);  
                com.Parameters.AddWithValue("F10b", DropDownList7.SelectedItem.Value);  
                com.Parameters.AddWithValue("F10c", DropDownList8.SelectedItem.Value);  
                com.Parameters.AddWithValue("F11a", DropDownList4.SelectedItem.Value);  
                com.Parameters.AddWithValue("F11b", DropDownList10.SelectedItem.Value);  
                com.Parameters.AddWithValue("F11c", DropDownList11.SelectedItem.Value);  
                com.Parameters.AddWithValue("F12a", DropDownList12.SelectedItem.Value);  
                com.Parameters.AddWithValue("F12b", DropDownList13.SelectedItem.Value);  
                com.Parameters.AddWithValue("F12c", DropDownList14.SelectedItem.Value);  
                com.Parameters.AddWithValue("F13a", DropDownList15.SelectedItem.Value);  
                com.Parameters.AddWithValue("F13b", DropDownList16.SelectedItem.Value);  
                com.Parameters.AddWithValue("F13c", DropDownList17.SelectedItem.Value);  
                com.Parameters.AddWithValue("F14a", DropDownList18.SelectedItem.Value);  
                com.Parameters.AddWithValue("F14b", DropDownList19.SelectedItem.Value);  
                com.Parameters.AddWithValue("F14c", DropDownList20.SelectedItem.Value); 
                com.Parameters.AddWithValue("F15a", DropDownList21.SelectedItem.Value);  
                com.Parameters.AddWithValue("F15b", DropDownList22.SelectedItem.Value);  
                com.Parameters.AddWithValue("F15c", DropDownList23.SelectedItem.Value);  
                com.Parameters.AddWithValue("F16", DropDownList24.SelectedItem.Value);  
                com.Parameters.AddWithValue("F17", DropDownList25.SelectedItem.Value);  
                com.Parameters.AddWithValue("F18", DropDownList26.SelectedItem.Value);  
                com.Parameters.AddWithValue("F19", DropDownList27.SelectedItem.Value);  



                //TextBox

                com.Parameters.Add("F4", System.Data.SqlDbType.NVarChar, 500).Value = TextBox1.Text;               

                

                //Label 

                com.Parameters.Add("Q1", System.Data.SqlDbType.NVarChar, 500).Value = Label1.Text;
                com.Parameters.Add("Q2", System.Data.SqlDbType.NVarChar, 500).Value = Label2.Text;
                com.Parameters.Add("Q3", System.Data.SqlDbType.NVarChar, 500).Value = Label3.Text;
                com.Parameters.Add("Q4", System.Data.SqlDbType.NVarChar, 500).Value = Label4.Text;
                com.Parameters.Add("Q5", System.Data.SqlDbType.NVarChar, 500).Value = Label5.Text;
                com.Parameters.Add("Q6", System.Data.SqlDbType.NVarChar, 500).Value = Label6.Text;
                com.Parameters.Add("Q7", System.Data.SqlDbType.NVarChar, 500).Value = Label7.Text;
                com.Parameters.Add("Q8", System.Data.SqlDbType.NVarChar, 500).Value = Label8.Text;
                com.Parameters.Add("Q9", System.Data.SqlDbType.NVarChar, 500).Value = Label9.Text;
                com.Parameters.Add("Q10a", System.Data.SqlDbType.NVarChar, 500).Value = Label10.Text;
                com.Parameters.Add("Q10b", System.Data.SqlDbType.NVarChar, 500).Value = Label11.Text;
                com.Parameters.Add("Q10c", System.Data.SqlDbType.NVarChar, 500).Value = Label12.Text;
                com.Parameters.Add("Q11a", System.Data.SqlDbType.NVarChar, 500).Value = Label13.Text;
                com.Parameters.Add("Q11b", System.Data.SqlDbType.NVarChar, 500).Value = Label14.Text;
                com.Parameters.Add("Q11c", System.Data.SqlDbType.NVarChar, 500).Value = Label15.Text;
                com.Parameters.Add("Q12a", System.Data.SqlDbType.NVarChar, 500).Value = Label16.Text;
                com.Parameters.Add("Q12b", System.Data.SqlDbType.NVarChar, 500).Value = Label17.Text;
                com.Parameters.Add("Q12c", System.Data.SqlDbType.NVarChar, 500).Value = Label18.Text;
                com.Parameters.Add("Q13a", System.Data.SqlDbType.NVarChar, 500).Value = Label19.Text;
                com.Parameters.Add("Q13b", System.Data.SqlDbType.NVarChar, 500).Value = Label20.Text;
                com.Parameters.Add("Q13c", System.Data.SqlDbType.NVarChar, 500).Value = Label21.Text;
                com.Parameters.Add("Q14a", System.Data.SqlDbType.NVarChar, 500).Value = Label22.Text;
                com.Parameters.Add("Q14b", System.Data.SqlDbType.NVarChar, 500).Value = Label23.Text;
                com.Parameters.Add("Q14c", System.Data.SqlDbType.NVarChar, 500).Value = Label24.Text;
                com.Parameters.Add("Q15a", System.Data.SqlDbType.NVarChar, 500).Value = Label25.Text;
                com.Parameters.Add("Q15b", System.Data.SqlDbType.NVarChar, 500).Value = Label26.Text;
                com.Parameters.Add("Q15c", System.Data.SqlDbType.NVarChar, 500).Value = Label27.Text;
                com.Parameters.Add("Q16", System.Data.SqlDbType.NVarChar, 500).Value = Label28.Text;
                com.Parameters.Add("Q17", System.Data.SqlDbType.NVarChar, 500).Value = Label29.Text;
                com.Parameters.Add("Q18", System.Data.SqlDbType.NVarChar, 500).Value = Label30.Text;
                com.Parameters.Add("Q19", System.Data.SqlDbType.NVarChar, 500).Value = Label31.Text;
                com.Parameters.Add("Q20", System.Data.SqlDbType.NVarChar, 500).Value = Label32.Text;
                




                if (con.State == ConnectionState.Closed)
                    con.Open();
                com.ExecuteNonQuery();
                con.Close();

                lbmsg.Text = "Data not entered successfully!!!";
                clear();

            }
            else
            {
                SqlConnection con = new SqlConnection(strConnString);
                com = new SqlCommand();
                com.Connection = con;
                com.CommandType = CommandType.Text;
                com.CommandText = "insert into FormF (Q1,F1,Q2,F2,Q3,F3,Q4,F4,Q5,F5,Q6,F6,Q7,F7,Q8,F8,Q9,F9,Q10a,F10a,Q10b,F10b,Q10c,F10c,Q11a,F11a,Q11b,F11b,Q11c,F11c,Q12a,F12a,Q12b,F12b,Q12c,F12c,Q13a,F13a,Q13b,F13b,Q13c,F13c,Q14a,F14a,Q14b,F14b,Q14c,F14c,Q15a,F15a,Q15b,F15b,Q15c,F15c,Q16,F16,Q17,F17,Q18,F18,Q19,F19,Q20,F20) values (@Q1,@F1,@Q2,@F2,@Q3,@F3,@Q4,@F4,@Q5,@F5,@Q6,@F6,@Q7,@F7,@Q8,@F8,@Q9,@F9,@Q10a,@F10a,@Q10b,@F10b,@Q10c,@F10c,@Q11a,@F11a,@Q11b,@F11b,@Q11c,@F11c,@Q12a,@F12a,@Q12b,@F12b,@Q12c,@F12c,@Q13a,@F13a,@Q13b,@F13b,@Q13c,@F13c,@Q14a,@F14a,@Q14b,@F14b,@Q14c,@F14c,@Q15a,@F15a,@Q15b,@F15b,@Q15c,@F15c,@Q16,@F16,@Q17,@F17,@Q18,@F18,@Q19,@F19,@Q20,@F20)";
                com.Parameters.Clear();

                 //CheckBox

                com.Parameters.AddWithValue("@F4", CheckBox23.Text + "," + CheckBox24.Text);
                com.Parameters.AddWithValue("@F5", CheckBox25.Text + "," + CheckBox5.Text + "," + CheckBox26.Text + "," + CheckBox7.Text + "," + CheckBox27.Text + "," + CheckBox28.Text);
                com.Parameters.AddWithValue("@F7", CheckBox33.Text + "," + CheckBox34.Text + "," + CheckBox35.Text + "," + CheckBox36.Text + "," + CheckBox37.Text+ "," + CheckBox38.Text+ "," + CheckBox41.Text+ "," + CheckBox40.Text);
                com.Parameters.AddWithValue("@F8", CheckBox29.Text + "," + CheckBox12.Text + "," + CheckBox30.Text + "," + CheckBox14.Text);
                com.Parameters.AddWithValue("@F20", CheckBox15.Text + "," + CheckBox16.Text + "," + CheckBox31.Text + "," + CheckBox32.Text + "," + CheckBox19.Text + "," + CheckBox20.Text);
                


               //DropDownList

                com.Parameters.AddWithValue("F1", DropDownList1.SelectedItem.Value);  
                com.Parameters.AddWithValue("F3", DropDownList2.SelectedItem.Value);                 
                com.Parameters.AddWithValue("F6", DropDownList3.SelectedItem.Value);      
                com.Parameters.AddWithValue("F9", DropDownList5.SelectedItem.Value);  
                com.Parameters.AddWithValue("F10a", DropDownList6.SelectedItem.Value);  
                com.Parameters.AddWithValue("F10b", DropDownList7.SelectedItem.Value);  
                com.Parameters.AddWithValue("F10c", DropDownList8.SelectedItem.Value);  
                com.Parameters.AddWithValue("F11a", DropDownList4.SelectedItem.Value);  
                com.Parameters.AddWithValue("F11b", DropDownList10.SelectedItem.Value);  
                com.Parameters.AddWithValue("F11c", DropDownList11.SelectedItem.Value);  
                com.Parameters.AddWithValue("F12a", DropDownList12.SelectedItem.Value);  
                com.Parameters.AddWithValue("F12b", DropDownList13.SelectedItem.Value);  
                com.Parameters.AddWithValue("F12c", DropDownList14.SelectedItem.Value);  
                com.Parameters.AddWithValue("F13a", DropDownList15.SelectedItem.Value);  
                com.Parameters.AddWithValue("F13b", DropDownList16.SelectedItem.Value);  
                com.Parameters.AddWithValue("F13c", DropDownList17.SelectedItem.Value);  
                com.Parameters.AddWithValue("F14a", DropDownList18.SelectedItem.Value);  
                com.Parameters.AddWithValue("F14b", DropDownList19.SelectedItem.Value);  
                com.Parameters.AddWithValue("F14c", DropDownList20.SelectedItem.Value); 
                com.Parameters.AddWithValue("F15a", DropDownList21.SelectedItem.Value);  
                com.Parameters.AddWithValue("F15b", DropDownList22.SelectedItem.Value);  
                com.Parameters.AddWithValue("F15c", DropDownList23.SelectedItem.Value);  
                com.Parameters.AddWithValue("F16", DropDownList24.SelectedItem.Value);  
                com.Parameters.AddWithValue("F17", DropDownList25.SelectedItem.Value);  
                com.Parameters.AddWithValue("F18", DropDownList26.SelectedItem.Value);  
                com.Parameters.AddWithValue("F19", DropDownList27.SelectedItem.Value);  


                //TextBox

                com.Parameters.Add("F2", System.Data.SqlDbType.NVarChar, 500).Value = TextBox1.Text;               

                

                //Label 

                com.Parameters.Add("Q1", System.Data.SqlDbType.NVarChar, 500).Value = Label1.Text;
                com.Parameters.Add("Q2", System.Data.SqlDbType.NVarChar, 500).Value = Label2.Text;
                com.Parameters.Add("Q3", System.Data.SqlDbType.NVarChar, 500).Value = Label3.Text;
                com.Parameters.Add("Q4", System.Data.SqlDbType.NVarChar, 500).Value = Label4.Text;
                com.Parameters.Add("Q5", System.Data.SqlDbType.NVarChar, 500).Value = Label5.Text;
                com.Parameters.Add("Q6", System.Data.SqlDbType.NVarChar, 500).Value = Label6.Text;
                com.Parameters.Add("Q7", System.Data.SqlDbType.NVarChar, 500).Value = Label7.Text;
                com.Parameters.Add("Q8", System.Data.SqlDbType.NVarChar, 500).Value = Label8.Text;
                com.Parameters.Add("Q9", System.Data.SqlDbType.NVarChar, 500).Value = Label9.Text;
                com.Parameters.Add("Q10a", System.Data.SqlDbType.NVarChar, 500).Value = Label10.Text;
                com.Parameters.Add("Q10b", System.Data.SqlDbType.NVarChar, 500).Value = Label11.Text;
                com.Parameters.Add("Q10c", System.Data.SqlDbType.NVarChar, 500).Value = Label12.Text;
                com.Parameters.Add("Q11a", System.Data.SqlDbType.NVarChar, 500).Value = Label13.Text;
                com.Parameters.Add("Q11b", System.Data.SqlDbType.NVarChar, 500).Value = Label14.Text;
                com.Parameters.Add("Q11c", System.Data.SqlDbType.NVarChar, 500).Value = Label15.Text;
                com.Parameters.Add("Q12a", System.Data.SqlDbType.NVarChar, 500).Value = Label16.Text;
                com.Parameters.Add("Q12b", System.Data.SqlDbType.NVarChar, 500).Value = Label17.Text;
                com.Parameters.Add("Q12c", System.Data.SqlDbType.NVarChar, 500).Value = Label18.Text;
                com.Parameters.Add("Q13a", System.Data.SqlDbType.NVarChar, 500).Value = Label19.Text;
                com.Parameters.Add("Q13b", System.Data.SqlDbType.NVarChar, 500).Value = Label20.Text;
                com.Parameters.Add("Q13c", System.Data.SqlDbType.NVarChar, 500).Value = Label21.Text;
                com.Parameters.Add("Q14a", System.Data.SqlDbType.NVarChar, 500).Value = Label22.Text;
                com.Parameters.Add("Q14b", System.Data.SqlDbType.NVarChar, 500).Value = Label23.Text;
                com.Parameters.Add("Q14c", System.Data.SqlDbType.NVarChar, 500).Value = Label24.Text;
                com.Parameters.Add("Q15a", System.Data.SqlDbType.NVarChar, 500).Value = Label25.Text;
                com.Parameters.Add("Q15b", System.Data.SqlDbType.NVarChar, 500).Value = Label26.Text;
                com.Parameters.Add("Q15c", System.Data.SqlDbType.NVarChar, 500).Value = Label27.Text;
                com.Parameters.Add("Q16", System.Data.SqlDbType.NVarChar, 500).Value = Label28.Text;
                com.Parameters.Add("Q17", System.Data.SqlDbType.NVarChar, 500).Value = Label29.Text;
                com.Parameters.Add("Q18", System.Data.SqlDbType.NVarChar, 500).Value = Label30.Text;
                com.Parameters.Add("Q19", System.Data.SqlDbType.NVarChar, 500).Value = Label31.Text;
                com.Parameters.Add("Q20", System.Data.SqlDbType.NVarChar, 500).Value = Label32.Text;
                

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
            

            CheckBox23.Checked = false;
            CheckBox24.Checked = false;
            CheckBox25.Checked = false;
            CheckBox5.Checked = false;
            CheckBox26.Checked = false;
            CheckBox7.Checked = false;
            CheckBox27.Checked = false;
            CheckBox28.Checked = false;
            CheckBox33.Checked = false;
            CheckBox34.Checked = false;
            CheckBox35.Checked = false;
            CheckBox36.Checked = false;
            CheckBox37.Checked = false;
            CheckBox38.Checked = false;
            CheckBox41.Checked = false;
            CheckBox40.Checked = false;
            CheckBox29.Checked = false;
            CheckBox12.Checked = false;
            CheckBox30.Checked = false;
            CheckBox15.Checked = false;
            CheckBox16.Checked = false;
            CheckBox31.Checked = false;
            CheckBox32.Checked = false;
            CheckBox19.Checked = false;
            CheckBox20.Checked = false;


        }                
         
          
    }
}