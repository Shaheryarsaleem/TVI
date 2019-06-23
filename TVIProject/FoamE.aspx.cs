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
    public partial class FoamE : System.Web.UI.Page
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

            Label23.Text = temp;
        }

        protected void Index_Changed(object sender, EventArgs e)
        {
        //    #region RadioButtonCondition

        //    //E11
        //    if (RadioButtonList1.SelectedIndex == 1)
        //    {
        //        // Clear any previously selected list 
        //        // items in the second question.

        //        CheckBoxList6.SelectedIndex = -1;

        //        // Disable all the list items in the second question.
        //        for (int i = 0; i < CheckBoxList6.Items.Count; i++)
        //        {
        //            CheckBoxList6.Items[i].Enabled = false;
        //            TextBox10.Enabled = false;
        //        }
        //    }

        //    else if (RadioButtonList1.SelectedIndex == 2)
        //    {
        //        // Clear any previously selected list 
        //        // items in the second question.

        //        CheckBoxList6.SelectedIndex = -1;

        //        // Disable all the list items in the second question.
        //        for (int i = 0; i < CheckBoxList6.Items.Count; i++)
        //        {
        //            CheckBoxList6.Items[i].Enabled = false;
        //            TextBox10.Enabled = false;
        //        }
        //    }
        //    else
        //        // Enable all the list items in the second question.
        //        for (int i = 0; i < CheckBoxList6.Items.Count; i++)
        //        {
        //            CheckBoxList6.Items[i].Enabled = true;
        //            TextBox10.Enabled = true;
        //        }


        //    //E14
        //    if (RadioButtonList2.SelectedIndex == 1)
        //    {
        //        // Clear any previously selected list 
        //        // items in the second question.

        //        CheckBoxList7.SelectedIndex = -1;

        //        // Disable all the list items in the second question.
        //        for (int i = 0; i < CheckBoxList7.Items.Count; i++)
        //        {
        //            CheckBoxList7.Items[i].Enabled = false;
        //            TextBox11.Enabled = false;
        //        }
        //    }

        //    else if (RadioButtonList2.SelectedIndex == 2)
        //    {
        //        // Clear any previously selected list 
        //        // items in the second question.

        //        CheckBoxList7.SelectedIndex = -1;

        //        // Disable all the list items in the second question.
        //        for (int i = 0; i < CheckBoxList7.Items.Count; i++)
        //        {
        //            CheckBoxList7.Items[i].Enabled = false;
        //            TextBox11.Enabled = false;
        //        }
        //    }
        //    else
        //        // Enable all the list items in the second question.
        //        for (int i = 0; i < CheckBoxList7.Items.Count; i++)
        //        {
        //            CheckBoxList7.Items[i].Enabled = true;
        //            TextBox11.Enabled = true;
        //        }



        //    //E18
        //    if (RadioButtonList3.SelectedIndex == 1)
        //    {
        //        // Clear any previously selected list 
        //        // items in the second question.
        //        Response.Redirect("FoamF.aspx");
        //    }

           
            
        //else
        //    {
        //        TextBox3.Enabled = true;
        //    }


        //    //E4
        //    if (RadioButtonList4.SelectedIndex == 1)
        //    {
        //        // Clear any previously selected list 
        //        // items in the second question.

        //        RadioButtonList6.SelectedIndex = -1;

        //        // Disable all the list items in the second question.
        //        for (int i = 0; i < RadioButtonList6.Items.Count; i++)
        //        {
        //            RadioButtonList6.Items[i].Enabled = false;
        //        }
        //    }

        //    else
        //        // Enable all the list items in the second question.
        //        for (int i = 0; i < CheckBoxList6.Items.Count; i++)
        //        {
        //            CheckBoxList6.Items[i].Enabled = true;
        //        }


        //    #endregion

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
                com.CommandText = "insert into FormE (Q1,E1,Q2,E2,Q3,E3,Q4,E4,Q5,E5,Q6,E6,Q7,E7,Q8,E8,Q9,E9,Q10,E10,Q11,E11,Q12,E12,Q13,E13,Q14,E14,Q15,E15,Q16,E16,Q17,E17,Q18,E18,Q19,E19,Q20,E20,Q21,E21,Q22,E22) values (@Q1,@E1,@Q2,@E2,@Q3,@E3,@Q4,@E4,@Q5,@E5,@Q6,@E6,@Q7,@E7,@Q8,@E8,@Q9,@E9,@Q10,@E10,@Q11,@E11,@Q12,@E12,@Q13,@E13,@Q14,@E14,@Q15,@E15,@Q16,@E16,@Q17,@E17,@Q18,@E18,@Q19,@E19,@Q20,@E20,@Q21,@E21,@Q22,@E22)";
                com.Parameters.Clear();



                //CheckBox

                com.Parameters.AddWithValue("@E3", CheckBox1.Text + "," + CheckBox2.Text + "," + CheckBox3.Text + "," + CheckBox4.Text + "," + CheckBox5.Text + "," + CheckBox6.Text + "," + CheckBox7.Text + "," + CheckBox8.Text + "," + CheckBox9.Text);
                com.Parameters.AddWithValue("@E6", CheckBox11.Text + "," + CheckBox12.Text + "," + CheckBox13.Text);
                com.Parameters.AddWithValue("@E7", CheckBox15.Text + "," + CheckBox16.Text);
                com.Parameters.AddWithValue("@E9", CheckBox17.Text + "," + CheckBox18.Text + "," + CheckBox19.Text + "," + CheckBox20.Text + "," + CheckBox21.Text + "," + CheckBox22.Text + "," + CheckBox23.Text + "," + CheckBox24.Text);
                com.Parameters.AddWithValue("@E10", CheckBox26.Text + "," + CheckBox27.Text + "," + CheckBox28.Text + "," + CheckBox29.Text + "," + CheckBox30.Text + "," + CheckBox31.Text + "," + CheckBox32.Text + "," + CheckBox33.Text + "," + CheckBox34.Text);
                com.Parameters.AddWithValue("@E12", CheckBox36.Text + "," + CheckBox37.Text + "," + CheckBox38.Text + "," + CheckBox39.Text + "," + CheckBox40.Text + "," + CheckBox41.Text + "," + CheckBox42.Text);
                com.Parameters.AddWithValue("@E14", CheckBox44.Text + "," + CheckBox45.Text + "," + CheckBox46.Text);
                com.Parameters.AddWithValue("@E15", CheckBox47.Text + "," + CheckBox48.Text + "," + CheckBox49.Text + "," + CheckBox50.Text);
                com.Parameters.AddWithValue("@E17", CheckBox52.Text + "," + CheckBox53.Text + "," + CheckBox54.Text + "," + CheckBox55.Text);
                com.Parameters.AddWithValue("@E22", CheckBox57.Text + "," + CheckBox58.Text + "," + CheckBox59.Text + "," + CheckBox60.Text);



                //DropDownList

                com.Parameters.AddWithValue("E4", DropDownList1.SelectedItem.Value);
                com.Parameters.AddWithValue("E5", DropDownList2.SelectedItem.Value);
                com.Parameters.AddWithValue("E8", DropDownList3.SelectedItem.Value);
                com.Parameters.AddWithValue("E11", DropDownList4.SelectedItem.Value);
                com.Parameters.AddWithValue("E13", DropDownList5.SelectedItem.Value);
                com.Parameters.AddWithValue("E16", DropDownList6.SelectedItem.Value);
                com.Parameters.AddWithValue("E18", DropDownList7.SelectedItem.Value);



                //TextBox

                com.Parameters.Add("E1", System.Data.SqlDbType.NVarChar, 500).Value = TextBox1.Text;
                com.Parameters.Add("E2", System.Data.SqlDbType.NVarChar, 500).Value = TextBox2.Text;
                com.Parameters.Add("E19", System.Data.SqlDbType.NVarChar, 500).Value = TextBox3.Text;
                com.Parameters.Add("E20", System.Data.SqlDbType.NVarChar, 500).Value = TextBox4.Text;
                com.Parameters.Add("E21", System.Data.SqlDbType.NVarChar, 500).Value = TextBox5.Text;



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
                com.CommandText = "insert into FormE (Q1,E1,Q2,E2,Q3,E3,Q4,E4,Q5,E5,Q6,E6,Q7,E7,Q8,E8,Q9,E9,Q10,E10,Q11,E11,Q12,E12,Q13,E13,Q14,E14,Q15,E15,Q16,E16,Q17,E17,Q18,E18,Q19,E19,Q20,E20,Q21,E21,Q22,E22) values (@Q1,@E1,@Q2,@E2,@Q3,@E3,@Q4,@E4,@Q5,@E5,@Q6,@E6,@Q7,@E7,@Q8,@E8,@Q9,@E9,@Q10,@E10,@Q11,@E11,@Q12,@E12,@Q13,@E13,@Q14,@E14,@Q15,@E15,@Q16,@E16,@Q17,@E17,@Q18,@E18,@Q19,@E19,@Q20,@E20,@Q21,@E21,@Q22,@E22)";
                com.Parameters.Clear();

                //CheckBox

                com.Parameters.AddWithValue("@E3", CheckBox1.Text + "," + CheckBox2.Text + "," + CheckBox3.Text + "," + CheckBox4.Text + "," + CheckBox5.Text + "," + CheckBox6.Text + "," + CheckBox7.Text + "," + CheckBox8.Text + "," + CheckBox9.Text);
                com.Parameters.AddWithValue("@E6", CheckBox11.Text + "," + CheckBox12.Text + "," + CheckBox13.Text);
                com.Parameters.AddWithValue("@E7", CheckBox15.Text + "," + CheckBox16.Text);
                com.Parameters.AddWithValue("@E9", CheckBox17.Text + "," + CheckBox18.Text + "," + CheckBox19.Text + "," + CheckBox20.Text + "," + CheckBox21.Text + "," + CheckBox22.Text + "," + CheckBox23.Text + "," + CheckBox24.Text);
                com.Parameters.AddWithValue("@E10", CheckBox26.Text + "," + CheckBox27.Text + "," + CheckBox28.Text + "," + CheckBox29.Text + "," + CheckBox30.Text + "," + CheckBox31.Text + "," + CheckBox32.Text + "," + CheckBox33.Text + "," + CheckBox34.Text);
                com.Parameters.AddWithValue("@E12", CheckBox36.Text + "," + CheckBox37.Text + "," + CheckBox38.Text + "," + CheckBox39.Text + "," + CheckBox40.Text + "," + CheckBox41.Text + "," + CheckBox42.Text);
                com.Parameters.AddWithValue("@E14", CheckBox44.Text + "," + CheckBox45.Text + "," + CheckBox46.Text);
                com.Parameters.AddWithValue("@E15", CheckBox47.Text + "," + CheckBox48.Text + "," + CheckBox49.Text + "," + CheckBox50.Text);
                com.Parameters.AddWithValue("@E17", CheckBox52.Text + "," + CheckBox53.Text + "," + CheckBox54.Text + "," + CheckBox55.Text);
                com.Parameters.AddWithValue("@E22", CheckBox57.Text + "," + CheckBox58.Text + "," + CheckBox59.Text + "," + CheckBox60.Text);



                //DropDownList

                com.Parameters.AddWithValue("E4", DropDownList1.SelectedItem.Value);
                com.Parameters.AddWithValue("E5", DropDownList2.SelectedItem.Value);
                com.Parameters.AddWithValue("E8", DropDownList3.SelectedItem.Value);
                com.Parameters.AddWithValue("E11", DropDownList4.SelectedItem.Value);
                com.Parameters.AddWithValue("E13", DropDownList5.SelectedItem.Value);
                com.Parameters.AddWithValue("E16", DropDownList6.SelectedItem.Value);
                com.Parameters.AddWithValue("E18", DropDownList7.SelectedItem.Value);



                //TextBox

                com.Parameters.Add("E1", System.Data.SqlDbType.NVarChar, 500).Value = TextBox1.Text;
                com.Parameters.Add("E2", System.Data.SqlDbType.NVarChar, 500).Value = TextBox2.Text;
                com.Parameters.Add("E19", System.Data.SqlDbType.NVarChar, 500).Value = TextBox3.Text;
                com.Parameters.Add("E20", System.Data.SqlDbType.NVarChar, 500).Value = TextBox4.Text;
                com.Parameters.Add("E21", System.Data.SqlDbType.NVarChar, 500).Value = TextBox5.Text;



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
            CheckBox3.Checked = false;
            CheckBox4.Checked = false;
            CheckBox5.Checked = false;
            CheckBox6.Checked = false;
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
            CheckBox21.Checked = false;
            CheckBox22.Checked = false;
            CheckBox23.Checked = false;
            CheckBox24.Checked = false;
            CheckBox26.Checked = false;
            CheckBox27.Checked = false;
            CheckBox28.Checked = false;
            CheckBox29.Checked = false;
            CheckBox30.Checked = false;
            CheckBox31.Checked = false;
            CheckBox32.Checked = false;
            CheckBox33.Checked = false;
            CheckBox34.Checked = false;
            CheckBox36.Checked = false;
            CheckBox37.Checked = false;
            CheckBox38.Checked = false;
            CheckBox39.Checked = false;
            CheckBox40.Checked = false;
            CheckBox41.Checked = false;
            CheckBox42.Checked = false;
            CheckBox44.Checked = false;
            CheckBox45.Checked = false;
            CheckBox46.Checked = false;
            CheckBox47.Checked = false;
            CheckBox48.Checked = false;
            CheckBox49.Checked = false;
            CheckBox50.Checked = false;
            CheckBox52.Checked = false;
            CheckBox53.Checked = false;
            CheckBox54.Checked = false;
            CheckBox55.Checked = false;
            CheckBox57.Checked = false;
            CheckBox58.Checked = false;
            CheckBox59.Checked = false;
            CheckBox60.Checked = false;


        }
    }
}