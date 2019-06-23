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
    public partial class FoamD : System.Web.UI.Page
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


            SqlCommand cmd = new SqlCommand("SELECT * from FormD where id =(select max(id) from FormD)");
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
        }

        protected void Index_Changed(object sender, EventArgs e)
        {
            //#region RadioButtonCondition           
           

            ////D11
            //if (RadioButtonList1.SelectedIndex == 1)
            //{
            //    // Clear any previously selected list 
            //    // items in the second question.

            //    CheckBoxList5.SelectedIndex = -1;

            //    // Disable all the list items in the second question.
            //    for (int i = 0; i < CheckBoxList5.Items.Count; i++)
            //    {
            //        CheckBoxList5.Items[i].Enabled = false;
            //        TextBox10.Enabled = false;
            //    }
            //}

            //else if (RadioButtonList1.SelectedIndex == 2)
            //{
            //    // Clear any previously selected list 
            //    // items in the second question.

            //    CheckBoxList5.SelectedIndex = -1;

            //    // Disable all the list items in the second question.
            //    for (int i = 0; i < CheckBoxList5.Items.Count; i++)
            //    {
            //        CheckBoxList5.Items[i].Enabled = false;
            //        TextBox10.Enabled = false;
            //    }
            //}
            //else
            //    // Enable all the list items in the second question.
            //    for (int i = 0; i < CheckBoxList5.Items.Count; i++)
            //    {
            //        CheckBoxList5.Items[i].Enabled = true;
            //        TextBox10.Enabled = true;
            //    }


            ////D14
            //if (RadioButtonList9.SelectedIndex == 1)
            //{
            //    // Clear any previouly selected list 
            //    // items in the second question.

            //    CheckBoxList6.SelectedIndex = -1;

            //    // Disable all the list items in the second question.
            //    for (int i = 0; i < CheckBoxList6.Items.Count; i++)
            //    {
            //        CheckBoxList6.Items[i].Enabled = false;
            //        TextBox11.Enabled = false;
            //    }
            //}

            //else if (RadioButtonList9.SelectedIndex == 2)
            //{
            //    // Clear any previously selected list 
            //    // items in the second question.

            //    CheckBoxList6.SelectedIndex = -1;

            //    // Disable all the list items in the second question.
            //    for (int i = 0; i < CheckBoxList6.Items.Count; i++)
            //    {
            //        CheckBoxList6.Items[i].Enabled = false;
            //        TextBox11.Enabled = false;
            //    }
            //}
            //else
            //    // Enable all the list items in the second question.
            //    for (int i = 0; i < CheckBoxList6.Items.Count; i++)
            //    {
            //        CheckBoxList6.Items[i].Enabled = true;
            //        TextBox11.Enabled = true;
            //    }

            ////D16
            //if (RadioButtonList2.SelectedIndex == 1)
            //{
            //    // Clear any previouly selected list 
            //    // items in the second question.

            //    CheckBoxList7.SelectedIndex = -1;

            //    // Disable all the list items in the second question.
            //    for (int i = 0; i < CheckBoxList7.Items.Count; i++)
            //    {
            //        CheckBoxList7.Items[i].Enabled = false;
            //        TextBox12.Enabled = false;
            //    }
            //}

            //else if (RadioButtonList2.SelectedIndex == 2)
            //{
            //    // Clear any previously selected list 
            //    // items in the second question.

            //    CheckBoxList7.SelectedIndex = -1;

            //    // Disable all the list items in the second question.
            //    for (int i = 0; i < CheckBoxList7.Items.Count; i++)
            //    {
            //        CheckBoxList7.Items[i].Enabled = false;
            //        TextBox12.Enabled = false;
            //    }
            //}
            //else
            //    // Enable all the list items in the second question.
            //    for (int i = 0; i < CheckBoxList7.Items.Count; i++)
            //    {
            //        CheckBoxList7.Items[i].Enabled = true;
            //        TextBox12.Enabled = true;
            //    }

            ////D18
            //if (RadioButtonList3.SelectedIndex == 1)
            //{
            //    // Clear any previouly selected list 
            //    // items in the second question.

            //    CheckBoxList7.SelectedIndex = -1;

            //    // Disable all the list items in the second question.
            //    Response.Redirect("FoamF.aspx");
            //}


            //else
            //{
            //    TextBox3.Enabled = true;
            //}


            ////D04
            //if (RadioButtonList4.SelectedIndex == 1)
            //{
            //    // Clear any previouly selected list 
            //    // items in the second question.

            //    RadioButtonList6.SelectedIndex = -1;

            //    // Disable all the list items in the second question.
            //    for (int i = 0; i < RadioButtonList6.Items.Count; i++)
            //    {
            //        RadioButtonList6.Items[i].Enabled = false;
            //    }
            //}

            //else
            //    // Enable all the list items in the second question.
            //    for (int i = 0; i < RadioButtonList6.Items.Count; i++)
            //    {
            //        RadioButtonList6.Items[i].Enabled = true;
            //    }


            ////D09
            //if (RadioButtonList5.SelectedIndex == 0)
            //{
            //    // Clear any previouly selected list 
            //    // items in the second question.

            //    CheckBoxList3.SelectedIndex = -1;

            //    // Disable all the list items in the second question.
            //    for (int i = 0; i < CheckBoxList3.Items.Count; i++)
            //    {
            //        CheckBoxList3.Items[i].Enabled = false;
            //        TextBox7.Enabled = false;
            //    }
            //}

            //else if (RadioButtonList5.SelectedIndex == 2)
            //{
            //    // Clear any previously selected list 
            //    // items in the second question.

            //    CheckBoxList3.SelectedIndex = -1;

            //    // Disable all the list items in the second question.
            //    for (int i = 0; i < CheckBoxList3.Items.Count; i++)
            //    {
            //        CheckBoxList3.Items[i].Enabled = false;
            //        TextBox7.Enabled = false;
            //    }
            //}
            //else
            //    // Enable all the list items in the second question.
            //    for (int i = 0; i < CheckBoxList3.Items.Count; i++)
            //    {
            //        CheckBoxList3.Items[i].Enabled = true;
            //        TextBox7.Enabled = true;
            //    }
            //#endregion
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
                com.CommandText = "insert into FormD (Q1,D1,Q2,D2,Q3,D3,Q4,D4,Q5,D5,Q6,D6,Q7,D7,Q8,D8,Q9,D9,Q10,D10,Q11,D11,Q12,D12,Q13,D13,Q14,D14,Q15,D15,Q16,D16,Q17,D17,Q18,D18,Q19,D19,Q20,D20,Q21,D21,Q22,D22) values (@Q1,@D1,@Q2,@D2,@Q3,@D3,@Q4,@D4,@Q5,@D5,@Q6,@D6,@Q7,@D7,@Q8,@D8,@Q9,@D9,@Q10,@D10,@Q11,@D11,@Q12,@D12,@Q13,@D13,@Q14,@D14,@Q15,@D15,@Q16,@D16,@Q17,@D17,@Q18,@D18,@Q19,@D19,@Q20,@D20,@Q21,@D21,@Q22,@D22)";
                com.Parameters.Clear();



                //CheckBox

                com.Parameters.AddWithValue("@D3", CheckBox1.Text + "," + CheckBox2.Text + "," + CheckBox3.Text + "," + CheckBox4.Text + "," + CheckBox5.Text + "," + CheckBox51.Text + "," + CheckBox7.Text + "," + CheckBox8.Text + "," + CheckBox9.Text);
                com.Parameters.AddWithValue("@D7", CheckBox11.Text + "," + CheckBox12.Text);
                com.Parameters.AddWithValue("@D9", CheckBox13.Text + "," + CheckBox14.Text + "," + CheckBox15.Text + "," + CheckBox16.Text + "," + CheckBox17.Text + "," + CheckBox18.Text + "," + CheckBox19.Text + "," + CheckBox20.Text);
                com.Parameters.AddWithValue("@D10", CheckBox22.Text + "," + CheckBox23.Text + "," + CheckBox24.Text + "," + CheckBox25.Text + "," + CheckBox26.Text + "," + CheckBox27.Text + "," + CheckBox28.Text + "," + CheckBox29.Text + "," + CheckBox30.Text);
                com.Parameters.AddWithValue("@D12", CheckBox31.Text + "," + CheckBox32.Text + "," + CheckBox33.Text + "," + CheckBox34.Text + "," + CheckBox35.Text + "," + CheckBox36.Text + "," + CheckBox37.Text);
                com.Parameters.AddWithValue("@D15", CheckBox39.Text + "," + CheckBox40.Text + "," + CheckBox41.Text);
                com.Parameters.AddWithValue("@D17", CheckBox43.Text + "," + CheckBox44.Text + "," + CheckBox45.Text + "," + CheckBox46.Text);
                com.Parameters.AddWithValue("@D22", CheckBox48.Text + "," + CheckBox49.Text + "," + CheckBox50.Text);



                //DropDownList

                com.Parameters.AddWithValue("D4", DropDownList1.SelectedItem.Value);
                com.Parameters.AddWithValue("D5", DropDownList2.SelectedItem.Value);
                com.Parameters.AddWithValue("D6", DropDownList3.SelectedItem.Value);
                com.Parameters.AddWithValue("D8", DropDownList4.SelectedItem.Value);
                com.Parameters.AddWithValue("D11", DropDownList5.SelectedItem.Value);
                com.Parameters.AddWithValue("D13", DropDownList6.SelectedItem.Value);
                com.Parameters.AddWithValue("D14", DropDownList7.SelectedItem.Value);
                com.Parameters.AddWithValue("D16", DropDownList8.SelectedItem.Value);
                com.Parameters.AddWithValue("D18", DropDownList9.SelectedItem.Value);



                //TextBox

                com.Parameters.Add("D1", System.Data.SqlDbType.NVarChar, 500).Value = TextBox1.Text;
                com.Parameters.Add("D2", System.Data.SqlDbType.NVarChar, 500).Value = TextBox2.Text;
                com.Parameters.Add("D19", System.Data.SqlDbType.NVarChar, 500).Value = TextBox3.Text;
                com.Parameters.Add("D20", System.Data.SqlDbType.NVarChar, 500).Value = TextBox4.Text;
                com.Parameters.Add("D21", System.Data.SqlDbType.NVarChar, 500).Value = TextBox5.Text;



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
                com.Parameters.Add("Q10", System.Data.SqlDbType.NVarChar, 500).Value = Label10.Text;
                com.Parameters.Add("Q11", System.Data.SqlDbType.NVarChar, 500).Value = Label11.Text;
                com.Parameters.Add("Q12", System.Data.SqlDbType.NVarChar, 500).Value = Label12.Text;
                com.Parameters.Add("Q13", System.Data.SqlDbType.NVarChar, 500).Value = Label13.Text;
                com.Parameters.Add("Q14", System.Data.SqlDbType.NVarChar, 500).Value = Label14.Text;
                com.Parameters.Add("Q15", System.Data.SqlDbType.NVarChar, 500).Value = Label15.Text;
                com.Parameters.Add("Q16", System.Data.SqlDbType.NVarChar, 500).Value = Label16.Text;
                com.Parameters.Add("Q17", System.Data.SqlDbType.NVarChar, 500).Value = Label17.Text;
                com.Parameters.Add("Q18", System.Data.SqlDbType.NVarChar, 500).Value = Label18.Text;
                com.Parameters.Add("Q19", System.Data.SqlDbType.NVarChar, 500).Value = Label19.Text;
                com.Parameters.Add("Q20", System.Data.SqlDbType.NVarChar, 500).Value = Label20.Text;
                com.Parameters.Add("Q21", System.Data.SqlDbType.NVarChar, 500).Value = Label21.Text;
                com.Parameters.Add("Q22", System.Data.SqlDbType.NVarChar, 500).Value = Label22.Text;





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
                com.CommandText = "insert into FormD (Q1,D1,Q2,D2,Q3,D3,Q4,D4,Q5,D5,Q6,D6,Q7,D7,Q8,D8,Q9,D9,Q10,D10,Q11,D11,Q12,D12,Q13,D13,Q14,D14,Q15,D15,Q16,D16,Q17,D17,Q18,D18,Q19,D19,Q20,D20,Q21,D21,Q22,D22) values (@Q1,@D1,@Q2,@D2,@Q3,@D3,@Q4,@D4,@Q5,@D5,@Q6,@D6,@Q7,@D7,@Q8,@D8,@Q9,@D9,@Q10,@D10,@Q11,@D11,@Q12,@D12,@Q13,@D13,@Q14,@D14,@Q15,@D15,@Q16,@D16,@Q17,@D17,@Q18,@D18,@Q19,@D19,@Q20,@D20,@Q21,@D21,@Q22,@D22)";
                com.Parameters.Clear();

                //CheckBox

                com.Parameters.AddWithValue("@D3", CheckBox1.Text + "," + CheckBox2.Text + "," + CheckBox3.Text + "," + CheckBox4.Text + "," + CheckBox5.Text + "," + CheckBox51.Text + "," + CheckBox7.Text + "," + CheckBox8.Text + "," + CheckBox9.Text);
                com.Parameters.AddWithValue("@D7", CheckBox11.Text + "," + CheckBox12.Text);
                com.Parameters.AddWithValue("@D9", CheckBox13.Text + "," + CheckBox14.Text + "," + CheckBox15.Text + "," + CheckBox16.Text + "," + CheckBox17.Text + "," + CheckBox18.Text + "," + CheckBox19.Text + "," + CheckBox20.Text);
                com.Parameters.AddWithValue("@D10", CheckBox22.Text + "," + CheckBox23.Text + "," + CheckBox24.Text + "," + CheckBox25.Text + "," + CheckBox26.Text + "," + CheckBox27.Text + "," + CheckBox28.Text + "," + CheckBox29.Text);
                com.Parameters.AddWithValue("@D12", CheckBox31.Text + "," + CheckBox32.Text + "," + CheckBox33.Text + "," + CheckBox34.Text + "," + CheckBox35.Text + "," + CheckBox36.Text + "," + CheckBox37.Text);
                com.Parameters.AddWithValue("@D15", CheckBox39.Text + "," + CheckBox40.Text + "," + CheckBox41.Text);
                com.Parameters.AddWithValue("@D17", CheckBox43.Text + "," + CheckBox44.Text + "," + CheckBox45.Text + "," + CheckBox46.Text);
                com.Parameters.AddWithValue("@D22", CheckBox48.Text + "," + CheckBox49.Text + "," + CheckBox50.Text);



                //DropDownList

                com.Parameters.AddWithValue("D4", DropDownList1.SelectedItem.Value);
                com.Parameters.AddWithValue("D5", DropDownList2.SelectedItem.Value);
                com.Parameters.AddWithValue("D6", DropDownList3.SelectedItem.Value);
                com.Parameters.AddWithValue("D8", DropDownList4.SelectedItem.Value);
                com.Parameters.AddWithValue("D11", DropDownList5.SelectedItem.Value);
                com.Parameters.AddWithValue("D13", DropDownList6.SelectedItem.Value);
                com.Parameters.AddWithValue("D14", DropDownList7.SelectedItem.Value);
                com.Parameters.AddWithValue("D16", DropDownList8.SelectedItem.Value);
                com.Parameters.AddWithValue("D18", DropDownList9.SelectedItem.Value);



                //TextBox

                com.Parameters.Add("D1", System.Data.SqlDbType.NVarChar, 500).Value = TextBox1.Text;
                com.Parameters.Add("D2", System.Data.SqlDbType.NVarChar, 500).Value = TextBox2.Text;
                com.Parameters.Add("D19", System.Data.SqlDbType.NVarChar, 500).Value = TextBox3.Text;
                com.Parameters.Add("D20", System.Data.SqlDbType.NVarChar, 500).Value = TextBox4.Text;
                com.Parameters.Add("D21", System.Data.SqlDbType.NVarChar, 500).Value = TextBox5.Text;



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
                com.Parameters.Add("Q10", System.Data.SqlDbType.NVarChar, 500).Value = Label10.Text;
                com.Parameters.Add("Q11", System.Data.SqlDbType.NVarChar, 500).Value = Label11.Text;
                com.Parameters.Add("Q12", System.Data.SqlDbType.NVarChar, 500).Value = Label12.Text;
                com.Parameters.Add("Q13", System.Data.SqlDbType.NVarChar, 500).Value = Label13.Text;
                com.Parameters.Add("Q14", System.Data.SqlDbType.NVarChar, 500).Value = Label14.Text;
                com.Parameters.Add("Q15", System.Data.SqlDbType.NVarChar, 500).Value = Label15.Text;
                com.Parameters.Add("Q16", System.Data.SqlDbType.NVarChar, 500).Value = Label16.Text;
                com.Parameters.Add("Q17", System.Data.SqlDbType.NVarChar, 500).Value = Label17.Text;
                com.Parameters.Add("Q18", System.Data.SqlDbType.NVarChar, 500).Value = Label18.Text;
                com.Parameters.Add("Q19", System.Data.SqlDbType.NVarChar, 500).Value = Label19.Text;
                com.Parameters.Add("Q20", System.Data.SqlDbType.NVarChar, 500).Value = Label20.Text;
                com.Parameters.Add("Q21", System.Data.SqlDbType.NVarChar, 500).Value = Label21.Text;
                com.Parameters.Add("Q22", System.Data.SqlDbType.NVarChar, 500).Value = Label22.Text;


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
            CheckBox3.Checked = false;
            CheckBox4.Checked = false;
            CheckBox5.Checked = false;
            CheckBox51.Checked = false;
            CheckBox7.Checked = false;
            CheckBox8.Checked = false;
            CheckBox9.Checked = false;
            CheckBox11.Checked = false;
            CheckBox12.Checked = false;
            CheckBox13.Checked = false;
            CheckBox15.Checked = false;
            CheckBox16.Checked = false;
            CheckBox17.Checked = false;
            CheckBox18.Checked = false;
            CheckBox19.Checked = false;
            CheckBox20.Checked = false;
            CheckBox22.Checked = false;
            CheckBox23.Checked = false;
            CheckBox24.Checked = false;
            CheckBox26.Checked = false;
            CheckBox27.Checked = false;
            CheckBox28.Checked = false;
            CheckBox29.Checked = false;

            CheckBox31.Checked = false;
            CheckBox32.Checked = false;
            CheckBox33.Checked = false;
            CheckBox34.Checked = false;
            CheckBox36.Checked = false;
            CheckBox37.Checked = false;
            CheckBox39.Checked = false;
            CheckBox40.Checked = false;
            CheckBox41.Checked = false;
            CheckBox44.Checked = false;
            CheckBox45.Checked = false;
            CheckBox46.Checked = false;
            CheckBox48.Checked = false;
            CheckBox49.Checked = false;
            CheckBox50.Checked = false;
        }
    }

}