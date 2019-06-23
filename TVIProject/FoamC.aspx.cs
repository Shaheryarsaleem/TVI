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
    public partial class FoamC : System.Web.UI.Page
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

            #region Retrieve Form Number


            // Retrieve Form Number
            string connstr = "Data Source=.;Initial Catalog=TVI;Integrated Security=True";
            SqlConnection conn = new SqlConnection(connstr);
            conn.Open();


            SqlCommand cmd = new SqlCommand("SELECT * from FormC where id =(select max(id) from FormC)");
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.Connection = conn;

            string temp = "";
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                temp += reader["id"].ToString();

            }

            conn.Close();

            Label23.Text = temp;

            #endregion
        }


        protected void Index_Changed(object sender, EventArgs e)
        {
           // #region RadioButtonCondition

           // // if the user is not a developer, do not
           // // ask the user to select a programming language.
           // if (RadioButtonList1.SelectedIndex == 1)
           // {
           //     // Clear any previously selected list 
           //     // items in the second question.

           //     CheckBoxList5.SelectedIndex = -1;

           //     // Disable all the list items in the second question.
           //     for (int i = 0; i < CheckBoxList5.Items.Count; i++)
           //     {
           //         CheckBoxList5.Items[i].Enabled = false;
           //         TextBox7.Enabled = false;                    
           //     }
           // }

           //else if (RadioButtonList1.SelectedIndex == 2)
           // {
           //     // Clear any previously selected list 
           //     // items in the second question.

           //     CheckBoxList5.SelectedIndex = -1;

           //     // Disable all the list items in the second question.
           //     for (int i = 0; i < CheckBoxList5.Items.Count; i++)
           //     {
           //         CheckBoxList5.Items[i].Enabled = false;
           //         TextBox7.Enabled = false;
           //     }
           // }
           // else
           //     // Enable all the list items in the second question.
           //     for (int i = 0; i < CheckBoxList5.Items.Count; i++)
           //     {
           //         CheckBoxList5.Items[i].Enabled = true;
           //         TextBox7.Enabled = true;
           //     }

           // //C14
           // if (RadioButtonList2.SelectedIndex == 1)
           // {
           //     // Clear any previously selected list 
           //     // items in the second question.

           //     CheckBoxList6.SelectedIndex = -1;

           //     // Disable all the list items in the second question.
           //     for (int i = 0; i < CheckBoxList6.Items.Count; i++)
           //     {
           //         CheckBoxList6.Items[i].Enabled = false;
           //         TextBox8.Enabled = false;
           //     }
           // }

           // else if (RadioButtonList2.SelectedIndex == 2)
           // {
           //     // Clear any previously selected list 
           //     // items in the second question.

           //     CheckBoxList6.SelectedIndex = -1;

           //     // Disable all the list items in the second question.
           //     for (int i = 0; i < CheckBoxList6.Items.Count; i++)
           //     {
           //         CheckBoxList6.Items[i].Enabled = false;
           //         TextBox8.Enabled = false;
           //     }
           // }
           // else
           //     // Enable all the list items in the second question.
           //     for (int i = 0; i < CheckBoxList6.Items.Count; i++)
           //     {
           //         CheckBoxList6.Items[i].Enabled = true;
           //         TextBox8.Enabled = true;
           //     }

           // //C16
           // if (RadioButtonList3.SelectedIndex == 1)
           // {
           //     // Clear any previously selected list 
           //     // items in the second question.

           //     CheckBoxList8.SelectedIndex = -1;

           //     // Disable all the list items in the second question.
           //     for (int i = 0; i < CheckBoxList8.Items.Count; i++)
           //     {
           //         CheckBoxList8.Items[i].Enabled = false;
           //         TextBox9.Enabled = false;
           //     }
           // }

           // else if (RadioButtonList3.SelectedIndex == 2)
           // {
           //     // Clear any previously selected list 
           //     // items in the second question.

           //     CheckBoxList8.SelectedIndex = -1;

           //     // Disable all the list items in the second question.
           //     for (int i = 0; i < CheckBoxList8.Items.Count; i++)
           //     {
           //         CheckBoxList8.Items[i].Enabled = false;
           //         TextBox9.Enabled = false;
           //     }
           // }
           // else
           //     // Enable all the list items in the second question.
           //     for (int i = 0; i < CheckBoxList8.Items.Count; i++)
           //     {
           //         CheckBoxList8.Items[i].Enabled = true;
           //         TextBox9.Enabled = true;
           //     }

           // //C18
           // if (RadioButtonList4.SelectedIndex == 1)
           // {
           //     // Clear any previously selected list 
           //     // items in the second question.
 
           //         Response.Redirect("FoamF.aspx");                
           // }

           // else
              
           //     {                    
           //         TextBox10.Enabled = true;
           //     }



           // //C5 radio
           // if (RadioButtonList6.SelectedIndex == 0)
           // {
           //     // Clear any previously selected list 
           //     // items in the second question.

           //     RadioButtonList7.SelectedIndex = -1;

           //     // Disable all the list items in the second question.
           //     for (int i = 0; i < RadioButtonList7.Items.Count; i++)
           //     {
           //         RadioButtonList7.Items[i].Enabled = false;
           //         TextBox4.Enabled = false;
           //     }
           // }


           // else
           //     // Enable all the list items in the second question.
           //     for (int i = 0; i < RadioButtonList7.Items.Count; i++)
           //     {
           //         RadioButtonList7.Items[i].Enabled = true;
           //         TextBox4.Enabled = true;
           //     }

           // //C5 chkbox
           // if (RadioButtonList6.SelectedIndex == 0)
           // {
           //     // Clear any previously selected list 
           //     // items in the second question.

           //     CheckBoxList7.SelectedIndex = -1;

           //     // Disable all the list items in the second question.
           //     for (int i = 0; i < CheckBoxList7.Items.Count; i++)
           //     {
           //         CheckBoxList7.Items[i].Enabled = false;                    
           //     }
           // }


           // else
           //     // Enable all the list items in the second question.
           //     for (int i = 0; i < CheckBoxList7.Items.Count; i++)
           //     {
           //         CheckBoxList7.Items[i].Enabled = true;
           //     }



           // ////C6 for c10
           // if (RadioButtonList7.SelectedIndex == 1)
           // {
           //     // Clear any previously selected list 
           //     // items in the second question.

           //     CheckBoxList4.SelectedIndex = -1;

           //     // Disable all the list items in the second question.
           //     for (int i = 0; i < CheckBoxList4.Items.Count; i++)
           //     {
           //         CheckBoxList4.Items[i].Enabled = false;
           //         TextBox6.Enabled = false;
           //     }
           // }


           // else
           //     // Enable all the list items in the second question.
           //     for (int i = 0; i < CheckBoxList4.Items.Count; i++)
           //     {
           //         CheckBoxList4.Items[i].Enabled = true;
           //         TextBox6.Enabled = true;
           //     }


           // ////C6 for c17
           // if (RadioButtonList7.SelectedIndex == 1)
           // {
           //     // Clear any previously selected list 
           //     // items in the second question.

           //     CheckBoxList8.SelectedIndex = -1;

           //     // Disable all the list items in the second question.
           //     for (int i = 0; i < CheckBoxList8.Items.Count; i++)
           //     {
           //         CheckBoxList8.Items[i].Enabled = false;
           //         TextBox9.Enabled = false;
           //     }
           // }


           // else
           //     // Enable all the list items in the second question.
           //     for (int i = 0; i < CheckBoxList8.Items.Count; i++)
           //     {
           //         CheckBoxList8.Items[i].Enabled = true;
           //         TextBox9.Enabled = true;
           //     }

           // //C08
           // if (RadioButtonList8.SelectedIndex == 0)
           // {
           //     // Clear any previously selected list 
           //     // items in the second question.

           //     CheckBoxList3.SelectedIndex = -1;

           //     // Disable all the list items in the second question.
           //     for (int i = 0; i < CheckBoxList3.Items.Count; i++)
           //     {
           //         CheckBoxList3.Items[i].Enabled = false;
           //         TextBox5.Enabled = false;
           //     }
           // }

           // else if (RadioButtonList8.SelectedIndex == 2)
           // {
           //     // Clear any previously selected list 
           //     // items in the second question.

           //     CheckBoxList3.SelectedIndex = -1;

           //     // Disable all the list items in the second question.
           //     for (int i = 0; i < CheckBoxList3.Items.Count; i++)
           //     {
           //         CheckBoxList3.Items[i].Enabled = false;
           //         TextBox5.Enabled = false;
           //     }
           // }
           // else
           //     // Enable all the list items in the second question.
           //     for (int i = 0; i < CheckBoxList3.Items.Count; i++)
           //     {
           //         CheckBoxList3.Items[i].Enabled = true;
           //         TextBox5.Enabled = true;
           //     }



           // #endregion

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
                com.CommandText = "insert into FormC (Q1,C1,Q2,C2,Q3,C3,Q4,C4,Q5,C5,Q6,C6,Q7,C7,Q8,C8,Q9,C9,Q10,C10,Q11,C11,Q12,C12,Q13,C13,Q14,C14,Q15,C15,Q16,C16,Q17,C17,Q18,C18,Q19,C19,Q20,C20,Q21,C21,Q22,C22) values (@Q1,@C1,@Q2,@C2,@Q3,@C3,@Q4,@C4,@Q5,@C5,@Q6,@C6,@Q7,@C7,@Q8,@C8,@Q9,@C9,@Q10,@C10,@Q11,@C11,@Q12,@C12,@Q13,@C13,@Q14,@C14,@Q15,@C15,@Q16,@C16,@Q17,@C17,@Q18,@C18,@Q19,@C19,@Q20,@C20,@Q21,@C21,@Q22,@C22)";
                com.Parameters.Clear();



                //CheckBox

                com.Parameters.AddWithValue("@C3", CheckBox1.Text + "," + CheckBox2.Text + "," + CheckBox53.Text + "," + CheckBox11.Text + "," + CheckBox5.Text + "," + CheckBox6.Text + "," + CheckBox7.Text + "," + CheckBox54.Text + "," + CheckBox55.Text);
                com.Parameters.AddWithValue("@C7", CheckBox12.Text + "," + CheckBox13.Text);
                com.Parameters.AddWithValue("@C9", CheckBox14.Text + "," + CheckBox15.Text + "," + CheckBox16.Text + "," + CheckBox17.Text + "," + CheckBox18.Text + "," + CheckBox19.Text + "," + CheckBox20.Text + "," + CheckBox21.Text);
                com.Parameters.AddWithValue("@C10", CheckBox23.Text + "," + CheckBox24.Text + "," + CheckBox25.Text + "," + CheckBox26.Text + "," + CheckBox27.Text + "," + CheckBox28.Text + "," + CheckBox29.Text + "," + CheckBox30.Text);
                com.Parameters.AddWithValue("@C12", CheckBox32.Text + "," + CheckBox33.Text + "," + CheckBox34.Text + "," + CheckBox35.Text + "," + CheckBox36.Text + "," + CheckBox37.Text + "," + CheckBox38.Text);
                com.Parameters.AddWithValue("@C15", CheckBox40.Text + "," + CheckBox41.Text + "," + CheckBox42.Text + "," + CheckBox43.Text);
                com.Parameters.AddWithValue("@C17", CheckBox45.Text + "," + CheckBox46.Text + "," + CheckBox47.Text + "," + CheckBox48.Text);
                com.Parameters.AddWithValue("@C22", CheckBox50.Text + "," + CheckBox51.Text + "," + CheckBox52.Text);



                //DropDownList

                com.Parameters.AddWithValue("C4", DropDownList1.SelectedItem.Value);
                com.Parameters.AddWithValue("C5", DropDownList2.SelectedItem.Value);
                com.Parameters.AddWithValue("C6", DropDownList3.SelectedItem.Value);
                com.Parameters.AddWithValue("C8", DropDownList4.SelectedItem.Value);
                com.Parameters.AddWithValue("C11", DropDownList5.SelectedItem.Value);
                com.Parameters.AddWithValue("C13", DropDownList6.SelectedItem.Value);
                com.Parameters.AddWithValue("C14", DropDownList7.SelectedItem.Value);
                com.Parameters.AddWithValue("C16", DropDownList8.SelectedItem.Value);
                com.Parameters.AddWithValue("C18", DropDownList9.SelectedItem.Value);



                //TextBox

                com.Parameters.Add("C1", System.Data.SqlDbType.NVarChar, 500).Value = TextBox1.Text;
                com.Parameters.Add("C2", System.Data.SqlDbType.NVarChar, 500).Value = TextBox2.Text;
                com.Parameters.Add("C19", System.Data.SqlDbType.NVarChar, 500).Value = TextBox10.Text;
                com.Parameters.Add("C20", System.Data.SqlDbType.NVarChar, 500).Value = TextBox11.Text;
                com.Parameters.Add("C21", System.Data.SqlDbType.NVarChar, 500).Value = TextBox12.Text;



                //Label 

                com.Parameters.Add("Q1", System.Data.SqlDbType.NVarChar, 500).Value = Label3.Text;
                com.Parameters.Add("Q2", System.Data.SqlDbType.NVarChar, 500).Value = Label4.Text;
                com.Parameters.Add("Q3", System.Data.SqlDbType.NVarChar, 500).Value = Label1.Text;
                com.Parameters.Add("Q4", System.Data.SqlDbType.NVarChar, 500).Value = Label2.Text;
                com.Parameters.Add("Q5", System.Data.SqlDbType.NVarChar, 500).Value = Label5.Text;
                com.Parameters.Add("Q6", System.Data.SqlDbType.NVarChar, 500).Value = Label6.Text;
                com.Parameters.Add("Q7", System.Data.SqlDbType.NVarChar, 500).Value = Label7.Text;
                com.Parameters.Add("Q8", System.Data.SqlDbType.NVarChar, 500).Value = Label8.Text;
                com.Parameters.Add("Q9", System.Data.SqlDbType.NVarChar, 500).Value = Label9.Text;
                com.Parameters.Add("Q10", System.Data.SqlDbType.NVarChar, 500).Value = Label10.Text;
                com.Parameters.Add("Q11", System.Data.SqlDbType.NVarChar, 500).Value = Label11.Text;
                com.Parameters.Add("Q12", System.Data.SqlDbType.NVarChar, 500).Value = Label22.Text;
                com.Parameters.Add("Q13", System.Data.SqlDbType.NVarChar, 500).Value = Label12.Text;
                com.Parameters.Add("Q14", System.Data.SqlDbType.NVarChar, 500).Value = Label13.Text;
                com.Parameters.Add("Q15", System.Data.SqlDbType.NVarChar, 500).Value = Label14.Text;
                com.Parameters.Add("Q16", System.Data.SqlDbType.NVarChar, 500).Value = Label15.Text;
                com.Parameters.Add("Q17", System.Data.SqlDbType.NVarChar, 500).Value = Label16.Text;
                com.Parameters.Add("Q18", System.Data.SqlDbType.NVarChar, 500).Value = Label17.Text;
                com.Parameters.Add("Q19", System.Data.SqlDbType.NVarChar, 500).Value = Label18.Text;
                com.Parameters.Add("Q20", System.Data.SqlDbType.NVarChar, 500).Value = Label19.Text;
                com.Parameters.Add("Q21", System.Data.SqlDbType.NVarChar, 500).Value = Label20.Text;
                com.Parameters.Add("Q22", System.Data.SqlDbType.NVarChar, 500).Value = Label21.Text;





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
                com.CommandText = "insert into FormC (Q1,C1,Q2,C2,Q3,C3,Q4,C4,Q5,C5,Q6,C6,Q7,C7,Q8,C8,Q9,C9,Q10,C10,Q11,C11,Q12,C12,Q13,C13,Q14,C14,Q15,C15,Q16,C16,Q17,C17,Q18,C18,Q19,C19,Q20,C20,Q21,C21,Q22,C22) values (@Q1,@C1,@Q2,@C2,@Q3,@C3,@Q4,@C4,@Q5,@C5,@Q6,@C6,@Q7,@C7,@Q8,@C8,@Q9,@C9,@Q10,@C10,@Q11,@C11,@Q12,@C12,@Q13,@C13,@Q14,@C14,@Q15,@C15,@Q16,@C16,@Q17,@C17,@Q18,@C18,@Q19,@C19,@Q20,@C20,@Q21,@C21,@Q22,@C22)";
                com.Parameters.Clear();

                //CheckBox

                com.Parameters.AddWithValue("@C3", CheckBox1.Text + "," + CheckBox2.Text + "," + CheckBox53.Text + "," + CheckBox11.Text + "," + CheckBox5.Text + "," + CheckBox6.Text + "," + CheckBox7.Text + "," + CheckBox54.Text + "," + CheckBox55.Text);
                com.Parameters.AddWithValue("@C7", CheckBox12.Text + "," + CheckBox13.Text);
                com.Parameters.AddWithValue("@C9", CheckBox14.Text + "," + CheckBox15.Text + "," + CheckBox16.Text + "," + CheckBox17.Text + "," + CheckBox18.Text + "," + CheckBox19.Text + "," + CheckBox20.Text + "," + CheckBox21.Text);
                com.Parameters.AddWithValue("@C10", CheckBox23.Text + "," + CheckBox24.Text + "," + CheckBox25.Text + "," + CheckBox26.Text + "," + CheckBox27.Text + "," + CheckBox28.Text + "," + CheckBox29.Text + "," + CheckBox30.Text);
                com.Parameters.AddWithValue("@C12", CheckBox32.Text + "," + CheckBox33.Text + "," + CheckBox34.Text + "," + CheckBox35.Text + "," + CheckBox36.Text + "," + CheckBox37.Text + "," + CheckBox38.Text);
                com.Parameters.AddWithValue("@C15", CheckBox40.Text + "," + CheckBox41.Text + "," + CheckBox42.Text + "," + CheckBox43.Text);
                com.Parameters.AddWithValue("@C17", CheckBox45.Text + "," + CheckBox46.Text + "," + CheckBox47.Text + "," + CheckBox48.Text);
                com.Parameters.AddWithValue("@C22", CheckBox50.Text + "," + CheckBox51.Text + "," + CheckBox52.Text);



                //DropDownList

                com.Parameters.AddWithValue("C4", DropDownList1.SelectedItem.Value);
                com.Parameters.AddWithValue("C5", DropDownList2.SelectedItem.Value);
                com.Parameters.AddWithValue("C6", DropDownList3.SelectedItem.Value);
                com.Parameters.AddWithValue("C8", DropDownList4.SelectedItem.Value);
                com.Parameters.AddWithValue("C11", DropDownList5.SelectedItem.Value);
                com.Parameters.AddWithValue("C13", DropDownList6.SelectedItem.Value);
                com.Parameters.AddWithValue("C14", DropDownList7.SelectedItem.Value);
                com.Parameters.AddWithValue("C16", DropDownList8.SelectedItem.Value);
                com.Parameters.AddWithValue("C18", DropDownList9.SelectedItem.Value);



                //TextBox

                com.Parameters.Add("C1", System.Data.SqlDbType.NVarChar, 500).Value = TextBox1.Text;
                com.Parameters.Add("C2", System.Data.SqlDbType.NVarChar, 500).Value = TextBox2.Text;
                com.Parameters.Add("C19", System.Data.SqlDbType.NVarChar, 500).Value = TextBox10.Text;
                com.Parameters.Add("C20", System.Data.SqlDbType.NVarChar, 500).Value = TextBox11.Text;
                com.Parameters.Add("C21", System.Data.SqlDbType.NVarChar, 500).Value = TextBox12.Text;



                //Label 

                com.Parameters.Add("Q1", System.Data.SqlDbType.NVarChar, 500).Value = Label3.Text;
                com.Parameters.Add("Q2", System.Data.SqlDbType.NVarChar, 500).Value = Label4.Text;
                com.Parameters.Add("Q3", System.Data.SqlDbType.NVarChar, 500).Value = Label1.Text;
                com.Parameters.Add("Q4", System.Data.SqlDbType.NVarChar, 500).Value = Label2.Text;
                com.Parameters.Add("Q5", System.Data.SqlDbType.NVarChar, 500).Value = Label5.Text;
                com.Parameters.Add("Q6", System.Data.SqlDbType.NVarChar, 500).Value = Label6.Text;
                com.Parameters.Add("Q7", System.Data.SqlDbType.NVarChar, 500).Value = Label7.Text;
                com.Parameters.Add("Q8", System.Data.SqlDbType.NVarChar, 500).Value = Label8.Text;
                com.Parameters.Add("Q9", System.Data.SqlDbType.NVarChar, 500).Value = Label9.Text;
                com.Parameters.Add("Q10", System.Data.SqlDbType.NVarChar, 500).Value = Label10.Text;
                com.Parameters.Add("Q11", System.Data.SqlDbType.NVarChar, 500).Value = Label11.Text;
                com.Parameters.Add("Q12", System.Data.SqlDbType.NVarChar, 500).Value = Label22.Text;
                com.Parameters.Add("Q13", System.Data.SqlDbType.NVarChar, 500).Value = Label12.Text;
                com.Parameters.Add("Q14", System.Data.SqlDbType.NVarChar, 500).Value = Label13.Text;
                com.Parameters.Add("Q15", System.Data.SqlDbType.NVarChar, 500).Value = Label14.Text;
                com.Parameters.Add("Q16", System.Data.SqlDbType.NVarChar, 500).Value = Label15.Text;
                com.Parameters.Add("Q17", System.Data.SqlDbType.NVarChar, 500).Value = Label16.Text;
                com.Parameters.Add("Q18", System.Data.SqlDbType.NVarChar, 500).Value = Label17.Text;
                com.Parameters.Add("Q19", System.Data.SqlDbType.NVarChar, 500).Value = Label18.Text;
                com.Parameters.Add("Q20", System.Data.SqlDbType.NVarChar, 500).Value = Label19.Text;
                com.Parameters.Add("Q21", System.Data.SqlDbType.NVarChar, 500).Value = Label20.Text;
                com.Parameters.Add("Q22", System.Data.SqlDbType.NVarChar, 500).Value = Label21.Text;


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
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";


            CheckBox1.Checked = false;
            CheckBox2.Checked = false;
            CheckBox53.Checked = false;
            CheckBox11.Checked = false;
            CheckBox5.Checked = false;
            CheckBox6.Checked = false;
            CheckBox7.Checked = false;
            CheckBox54.Checked = false;
            CheckBox55.Checked = false;
            CheckBox11.Checked = false;
            CheckBox12.Checked = false;
            CheckBox13.Checked = false;
            CheckBox15.Checked = false;
            CheckBox16.Checked = false;
            CheckBox17.Checked = false;
            CheckBox18.Checked = false;
            CheckBox19.Checked = false;
            CheckBox20.Checked = false;
            CheckBox21.Checked = false;
            CheckBox22.Checked = false;
            CheckBox23.Checked = false;
            CheckBox24.Checked = false;
            CheckBox26.Checked = false;
            CheckBox27.Checked = false;
            CheckBox28.Checked = false;
            CheckBox29.Checked = false;
            CheckBox30.Checked = false;
            CheckBox32.Checked = false;
            CheckBox33.Checked = false;
            CheckBox34.Checked = false;
            CheckBox36.Checked = false;
            CheckBox37.Checked = false;
            CheckBox38.Checked = false;
            CheckBox40.Checked = false;
            CheckBox41.Checked = false;
            CheckBox42.Checked = false;
            CheckBox43.Checked = false;
            CheckBox45.Checked = false;
            CheckBox46.Checked = false;
            CheckBox47.Checked = false;
            CheckBox48.Checked = false;
            CheckBox50.Checked = false;
            CheckBox51.Checked = false;
            CheckBox52.Checked = false;


        }
    }
}