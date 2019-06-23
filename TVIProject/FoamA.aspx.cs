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
    public partial class FoamA : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("SELECT * from FormA where id =(select max(id) from FormA)");
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
            // Session.Clear();
            Session["username"] = null;
            Response.Redirect("~/Admin.aspx");
        }


        
        protected void Index_Changed(object sender, EventArgs e)
        {

            #region RadioButtonCondition
            // if the user is not a developer, do not
            // ask the user to select a programming language.
            if (DropDownList2.SelectedIndex == 1)
            { 
                // Clear any previously selected list 
                // items in the second question.
                DropDownList3.SelectedIndex = -1;

                // Disable all the list items in the second question.
                for (int i = 0; i < DropDownList3.Items.Count; i++)
                {
                    DropDownList3.Items[i].Enabled = false;
                }
            }
            else
                // Enable all the list items in the second question.
                for (int i = 0; i < DropDownList3.Items.Count; i++)
                {
                    DropDownList3.Items[i].Enabled = true;
                }

            //new line for radio
            // if the user is not a developer, do not
            // ask the user to select a programming language.
            if (DropDownList2.SelectedIndex == 1)
            {
                // Clear any previously selected list 
                // items in the second question.
                DropDownList4.SelectedIndex = -1;

                // Disable all the list items in the second question.
                for (int i = 0; i < DropDownList4.Items.Count; i++)
                {
                    DropDownList4.Items[i].Enabled = false;
                }
            }
            else
                // Enable all the list items in the second question.
                for (int i = 0; i < DropDownList4.Items.Count; i++)
                {
                    DropDownList4.Items[i].Enabled = true;
                }
        #endregion




            #region TextBoxDisable
            
            
            // FOR TEXT BOX DISABLE
            if (DropDownList2.SelectedIndex == 1)
            {

                TextBox3.Enabled = false;
                TextBox4.Enabled = false;
                TextBox6.Enabled = false;
                TextBox22.Enabled = false;
                TextBox7.Enabled = false;
                TextBox8.Enabled = false;
                TextBox9.Enabled = false;
                TextBox11.Enabled = false;
                TextBox12.Enabled = false;
                TextBox13.Enabled = false;
                TextBox14.Enabled = false;
                TextBox15.Enabled = false;
                TextBox19.Enabled = false;
                TextBox21.Enabled = false;
                TextBox20.Enabled = false;
                TextBox17.Enabled = false;
                TextBox18.Enabled = false;
                TextBox10.Enabled = false;
            }

            #endregion

            #region A8, A9,10
            if (DropDownList3.SelectedIndex == 1)
            {
                // Clear any previously selected list 
                // items in the second question.
                DropDownList4.SelectedIndex = -1;

                // Disable all the list items in the second question.
                for (int i = 0; i < DropDownList4.Items.Count; i++)
                {
                    DropDownList4.Items[i].Enabled = false;
                }
            }
            else
                // Enable all the list items in the second question.
                for (int i = 0; i < DropDownList4.Items.Count; i++)
                {
                    DropDownList4.Items[i].Enabled = true;
                }

            //
            if (DropDownList3.SelectedIndex == 1)
            {

        
                TextBox7.Enabled = false;
                TextBox8.Enabled = false;
                TextBox9.Enabled = false;

            }

            

            else
            {
                TextBox7.Enabled = true;
                TextBox8.Enabled = true;
                TextBox9.Enabled = true;
            }

            //



            #endregion

            #region A9, A10


            if (DropDownList4.SelectedIndex == 3)
            {
                TextBox7.Enabled = false;
                TextBox8.Enabled = false;
                TextBox9.Enabled = false;
            }
            else
            {
                TextBox7.Enabled = true;
                TextBox8.Enabled = true;
                TextBox9.Enabled = true;
            }

            #endregion

        }
            
        #region Calander

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Calendar1.Visible = true;
        }
        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox1.Text = Calendar1.SelectedDate.ToShortDateString();
            Calendar1.Visible = false;
        }
        #endregion

        protected void Button1_Click(object sender, EventArgs e)
        {

            #region Insert
            
          
            if (CheckBox1.Checked == true)
            { 
                SqlConnection con = new SqlConnection(strConnString);
                com = new SqlCommand();
                com.Connection = con;
                com.CommandType = CommandType.Text;
                com.CommandText = "insert into FormA (Q1,a1,Q2,a2,Q3,a3,Q4,a4,Q5,a5,Q6,a6,Q7,a7,Q8,a8,Q9,a9,Q10A,a10a,Q10B,a10b,Q10C,a10c,Q11,a11,Q12,a12,Q13,a13,Q14,a14,Q15,a15,Q16A,a16a,Q16B,a16b,Q16C,a16c,Q17,a17,Q18,a18, Q19,a19,Q20,a20) values (@Q1,@a1,@Q2,@a2,@Q3,@a3,@Q4,@a4,@Q5,@a5,@Q6,@a6,@Q7,@a7,@Q8,@a8,@Q9,@a9,@Q10A,@a10a,@Q10B,@a10b,@Q10C,@a10c,@Q11,@a11,@Q12,@a12,@Q13,@a13,@Q14,@a14,@Q15,@a15,@Q16A,@a16a,@Q16B,@a16b,@Q16C,@a16c,@Q17,@a17,@Q18,@a18, @Q19,@a19,@Q20,@a20)";
                com.Parameters.Clear();

                com.Parameters.AddWithValue("@a6", CheckBox1.Text + "," + CheckBox2.Text + "," + CheckBox3.Text + "," + CheckBox4.Text + "," + CheckBox5.Text + "," + CheckBox6.Text + "," + CheckBox7.Text + "," + CheckBox8.Text + "," + CheckBox9.Text + "," + CheckBox10.Text);

                com.Parameters.AddWithValue("@a12", CheckBox11.Text + "," + CheckBox12.Text);
                com.Parameters.AddWithValue("@a17", CheckBox13.Text + "," + CheckBox14.Text + "," + CheckBox15.Text + "," + CheckBox16.Text + "," + CheckBox17.Text);
                com.Parameters.AddWithValue("@a18", CheckBox18.Text + "," + CheckBox19.Text + "," + CheckBox20.Text + "," + CheckBox21.Text + "," + CheckBox22.Text + "," + CheckBox23.Text + "," + CheckBox24.Text);
                com.Parameters.AddWithValue("@a19", CheckBox25.Text + "," + CheckBox26.Text + "," + CheckBox27.Text + "," + CheckBox28.Text + "," + CheckBox29.Text + "," + CheckBox30.Text + "," + CheckBox31.Text + "," + CheckBox32.Text + "," + CheckBox33.Text + "," + CheckBox34.Text);
                com.Parameters.AddWithValue("@a20", CheckBox35.Text + "," + CheckBox36.Text + "," + CheckBox37.Text + "," + CheckBox38.Text + "," + CheckBox39.Text + "," + CheckBox40.Text + "," + CheckBox41.Text + "," + CheckBox42.Text + "," + CheckBox43.Text + "," + CheckBox44.Text);



                com.Parameters.Add("a1", System.Data.SqlDbType.NVarChar, 500).Value = TextBox1.Text;

                com.Parameters.AddWithValue("a2", DropDownList1.SelectedItem.Value);  //DropDownList1
                com.Parameters.AddWithValue("a3", DropDownList1.SelectedItem.Value);  //DropDownList2

                com.Parameters.Add("a4", System.Data.SqlDbType.NVarChar, 500).Value = TextBox3.Text;
                com.Parameters.Add("a5", System.Data.SqlDbType.NVarChar, 500).Value = TextBox4.Text;

                //a6 check box

                com.Parameters.Add("a7", System.Data.SqlDbType.NVarChar, 500).Value = TextBox6.Text;

                com.Parameters.AddWithValue("a8", DropDownList3.SelectedItem.Value);  //DropDownList3
                com.Parameters.AddWithValue("a9", DropDownList4.SelectedItem.Value);  //DropDownList4


                com.Parameters.Add("a10a", System.Data.SqlDbType.NVarChar, 500).Value = TextBox7.Text;
                com.Parameters.Add("a10b", System.Data.SqlDbType.NVarChar, 500).Value = TextBox8.Text;
                com.Parameters.Add("a10c", System.Data.SqlDbType.NVarChar, 500).Value = TextBox9.Text;
                com.Parameters.Add("a11", System.Data.SqlDbType.NVarChar, 500).Value = TextBox10.Text;

                //a12 check box

                com.Parameters.Add("a13", System.Data.SqlDbType.NVarChar, 500).Value = TextBox11.Text;
                com.Parameters.Add("a14", System.Data.SqlDbType.NVarChar, 500).Value = TextBox12.Text;
                com.Parameters.Add("a15", System.Data.SqlDbType.NVarChar, 500).Value = TextBox13.Text;
                com.Parameters.Add("a16a", System.Data.SqlDbType.NVarChar, 500).Value = TextBox14.Text;
                com.Parameters.Add("a16b", System.Data.SqlDbType.NVarChar, 500).Value = TextBox15.Text;
                com.Parameters.Add("a16c", System.Data.SqlDbType.NVarChar, 500).Value = TextBox19.Text;



                com.Parameters.Add("Q1", System.Data.SqlDbType.NVarChar, 500).Value = Label1.Text;
                com.Parameters.Add("Q2", System.Data.SqlDbType.NVarChar, 500).Value = Label2.Text;
                com.Parameters.Add("Q3", System.Data.SqlDbType.NVarChar, 500).Value = Label3.Text;
                com.Parameters.Add("Q4", System.Data.SqlDbType.NVarChar, 500).Value = Label4.Text;
                com.Parameters.Add("Q5", System.Data.SqlDbType.NVarChar, 500).Value = Label5.Text;
                com.Parameters.Add("Q6", System.Data.SqlDbType.NVarChar, 500).Value = Label6.Text;
                com.Parameters.Add("Q7", System.Data.SqlDbType.NVarChar, 500).Value = Label7.Text;
                com.Parameters.Add("Q8", System.Data.SqlDbType.NVarChar, 500).Value = Label8.Text;
                com.Parameters.Add("Q9", System.Data.SqlDbType.NVarChar, 500).Value = Label9.Text;
                com.Parameters.Add("Q10A", System.Data.SqlDbType.NVarChar, 500).Value = Label10.Text;
                com.Parameters.Add("Q10B", System.Data.SqlDbType.NVarChar, 500).Value = Label11.Text;
                com.Parameters.Add("Q10C", System.Data.SqlDbType.NVarChar, 500).Value = Label12.Text;
                com.Parameters.Add("Q11", System.Data.SqlDbType.NVarChar, 500).Value = Label13.Text;
                com.Parameters.Add("Q12", System.Data.SqlDbType.NVarChar, 500).Value = Label14.Text;
                com.Parameters.Add("Q13", System.Data.SqlDbType.NVarChar, 500).Value = Label15.Text;
                com.Parameters.Add("Q14", System.Data.SqlDbType.NVarChar, 500).Value = Label16.Text;
                com.Parameters.Add("Q15", System.Data.SqlDbType.NVarChar, 500).Value = Label17.Text;
                com.Parameters.Add("Q16A", System.Data.SqlDbType.NVarChar, 500).Value = Label18.Text;
                com.Parameters.Add("Q16B", System.Data.SqlDbType.NVarChar, 500).Value = Label19.Text;
                com.Parameters.Add("Q16C", System.Data.SqlDbType.NVarChar, 500).Value = Label20.Text;
                com.Parameters.Add("Q17", System.Data.SqlDbType.NVarChar, 500).Value = Label21.Text;
                com.Parameters.Add("Q18", System.Data.SqlDbType.NVarChar, 500).Value = Label22.Text;
                com.Parameters.Add("Q19", System.Data.SqlDbType.NVarChar, 500).Value = Label23.Text;
                com.Parameters.Add("Q20", System.Data.SqlDbType.NVarChar, 500).Value = Label24.Text;


                if (con.State == ConnectionState.Closed)
                    con.Open();
                com.ExecuteNonQuery();
                con.Close();
            
                lbmsg.Text = "Data entered successfully!!!";
                clear();
            }
            else
            {
                SqlConnection con = new SqlConnection(strConnString);
                com = new SqlCommand();
                com.Connection = con;
                com.CommandType = CommandType.Text;
                com.CommandText = "insert into FormA (Q1,a1,Q2,a2,Q3,a3,Q4,a4,Q5,a5,Q6,a6,Q7,a7,Q8,a8,Q9,a9,Q10A,a10a,Q10B,a10b,Q10C,a10c,Q11,a11,Q12,a12,Q13,a13,Q14,a14,Q15,a15,Q16A,a16a,Q16B,a16b,Q16C,a16c,Q17,a17,Q18,a18, Q19,a19,Q20,a20) values (@Q1,@a1,@Q2,@a2,@Q3,@a3,@Q4,@a4,@Q5,@a5,@Q6,@a6,@Q7,@a7,@Q8,@a8,@Q9,@a9,@Q10A,@a10a,@Q10B,@a10b,@Q10C,@a10c,@Q11,@a11,@Q12,@a12,@Q13,@a13,@Q14,@a14,@Q15,@a15,@Q16A,@a16a,@Q16B,@a16b,@Q16C,@a16c,@Q17,@a17,@Q18,@a18, @Q19,@a19,@Q20,@a20)";
                com.Parameters.Clear();

                com.Parameters.AddWithValue("@a6", CheckBox1.Text + "," + CheckBox2.Text + "," + CheckBox3.Text + "," + CheckBox4.Text + "," + CheckBox5.Text + "," + CheckBox6.Text + "," + CheckBox7.Text + "," + CheckBox8.Text + "," + CheckBox9.Text + "," + CheckBox10.Text);

                com.Parameters.AddWithValue("@a12", CheckBox11.Text + "," + CheckBox12.Text);
                com.Parameters.AddWithValue("@a17", CheckBox13.Text + "," + CheckBox14.Text + "," + CheckBox15.Text + "," + CheckBox16.Text + "," + CheckBox17.Text);
                com.Parameters.AddWithValue("@a18", CheckBox18.Text + "," + CheckBox19.Text + "," + CheckBox20.Text + "," + CheckBox21.Text + "," + CheckBox22.Text + "," + CheckBox23.Text + "," + CheckBox24.Text);
                com.Parameters.AddWithValue("@a19", CheckBox25.Text + "," + CheckBox26.Text + "," + CheckBox27.Text + "," + CheckBox28.Text + "," + CheckBox29.Text + "," + CheckBox30.Text + "," + CheckBox31.Text + "," + CheckBox32.Text + "," + CheckBox33.Text + "," + CheckBox34.Text);
                com.Parameters.AddWithValue("@a20", CheckBox35.Text + "," + CheckBox36.Text + "," + CheckBox37.Text + "," + CheckBox38.Text + "," + CheckBox39.Text + "," + CheckBox40.Text + "," + CheckBox41.Text + "," + CheckBox42.Text + "," + CheckBox43.Text + "," + CheckBox44.Text);



                com.Parameters.Add("a1", System.Data.SqlDbType.NVarChar, 500).Value = TextBox1.Text;

                com.Parameters.AddWithValue("a2", DropDownList1.SelectedItem.Value);  //DropDownList1
                com.Parameters.AddWithValue("a3", DropDownList1.SelectedItem.Value);  //DropDownList2

                com.Parameters.Add("a4", System.Data.SqlDbType.NVarChar, 500).Value = TextBox3.Text;
                com.Parameters.Add("a5", System.Data.SqlDbType.NVarChar, 500).Value = TextBox4.Text;

                //a6 check box

                com.Parameters.Add("a7", System.Data.SqlDbType.NVarChar, 500).Value = TextBox6.Text;

                com.Parameters.AddWithValue("a8", DropDownList3.SelectedItem.Value);  //DropDownList3
                com.Parameters.AddWithValue("a9", DropDownList4.SelectedItem.Value);  //DropDownList4


                com.Parameters.Add("a10a", System.Data.SqlDbType.NVarChar, 500).Value = TextBox7.Text;
                com.Parameters.Add("a10b", System.Data.SqlDbType.NVarChar, 500).Value = TextBox8.Text;
                com.Parameters.Add("a10c", System.Data.SqlDbType.NVarChar, 500).Value = TextBox9.Text;
                com.Parameters.Add("a11", System.Data.SqlDbType.NVarChar, 500).Value = TextBox10.Text;

                //a12 check box

                com.Parameters.Add("a13", System.Data.SqlDbType.NVarChar, 500).Value = TextBox11.Text;
                com.Parameters.Add("a14", System.Data.SqlDbType.NVarChar, 500).Value = TextBox12.Text;
                com.Parameters.Add("a15", System.Data.SqlDbType.NVarChar, 500).Value = TextBox13.Text;
                com.Parameters.Add("a16a", System.Data.SqlDbType.NVarChar, 500).Value = TextBox14.Text;
                com.Parameters.Add("a16b", System.Data.SqlDbType.NVarChar, 500).Value = TextBox15.Text;
                com.Parameters.Add("a16c", System.Data.SqlDbType.NVarChar, 500).Value = TextBox19.Text;


                com.Parameters.Add("Q1", System.Data.SqlDbType.NVarChar, 500).Value = Label1.Text;
                com.Parameters.Add("Q2", System.Data.SqlDbType.NVarChar, 500).Value = Label2.Text;
                com.Parameters.Add("Q3", System.Data.SqlDbType.NVarChar, 500).Value = Label3.Text;
                com.Parameters.Add("Q4", System.Data.SqlDbType.NVarChar, 500).Value = Label4.Text;
                com.Parameters.Add("Q5", System.Data.SqlDbType.NVarChar, 500).Value = Label5.Text;
                com.Parameters.Add("Q6", System.Data.SqlDbType.NVarChar, 500).Value = Label6.Text;
                com.Parameters.Add("Q7", System.Data.SqlDbType.NVarChar, 500).Value = Label7.Text;
                com.Parameters.Add("Q8", System.Data.SqlDbType.NVarChar, 500).Value = Label8.Text;
                com.Parameters.Add("Q9", System.Data.SqlDbType.NVarChar, 500).Value = Label9.Text;
                com.Parameters.Add("Q10A", System.Data.SqlDbType.NVarChar, 500).Value = Label10.Text;
                com.Parameters.Add("Q10B", System.Data.SqlDbType.NVarChar, 500).Value = Label11.Text;
                com.Parameters.Add("Q10C", System.Data.SqlDbType.NVarChar, 500).Value = Label12.Text;
                com.Parameters.Add("Q11", System.Data.SqlDbType.NVarChar, 500).Value = Label13.Text;
                com.Parameters.Add("Q12", System.Data.SqlDbType.NVarChar, 500).Value = Label14.Text;
                com.Parameters.Add("Q13", System.Data.SqlDbType.NVarChar, 500).Value = Label15.Text;
                com.Parameters.Add("Q14", System.Data.SqlDbType.NVarChar, 500).Value = Label16.Text;
                com.Parameters.Add("Q15", System.Data.SqlDbType.NVarChar, 500).Value = Label17.Text;
                com.Parameters.Add("Q16A", System.Data.SqlDbType.NVarChar, 500).Value = Label18.Text;
                com.Parameters.Add("Q16B", System.Data.SqlDbType.NVarChar, 500).Value = Label19.Text;
                com.Parameters.Add("Q16C", System.Data.SqlDbType.NVarChar, 500).Value = Label20.Text;
                com.Parameters.Add("Q17", System.Data.SqlDbType.NVarChar, 500).Value = Label21.Text;
                com.Parameters.Add("Q18", System.Data.SqlDbType.NVarChar, 500).Value = Label22.Text;
                com.Parameters.Add("Q19", System.Data.SqlDbType.NVarChar, 500).Value = Label23.Text;
                com.Parameters.Add("Q20", System.Data.SqlDbType.NVarChar, 500).Value = Label24.Text;

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
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";
            TextBox12.Text = "";
            TextBox13.Text = "";
            TextBox14.Text = "";
            TextBox15.Text = "";
            TextBox19.Text = "";

            CheckBox1.Checked = false;
            CheckBox2.Checked = false;
            CheckBox3.Checked = false;
            CheckBox4.Checked = false;
            CheckBox5.Checked = false;
            CheckBox6.Checked = false;
            CheckBox7.Checked = false;
            CheckBox8.Checked = false;
            CheckBox9.Checked = false;
            CheckBox10.Checked = false;
        }

    }
}