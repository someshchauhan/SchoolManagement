using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SchoolManagement
{
    public partial class updatestu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            sup.Visible=false;
            super.Visible=false;
            update.Visible=false;
            Update2.Visible=false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            sup.Visible = true;
            Button3.Visible = false;
            Button4.Visible = true;
        }

        protected void Button4_Click1(object sender, EventArgs e)
        {
            super.Visible = true;
            Button4.Visible = false;
            Button3.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            sup.Visible = true;

            SqlConnection con = new SqlConnection("Data Source=(localdb)\\dronz;Initial Catalog=SchoolManagement;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("select *from students where RollNumber='" + Roll.Text + "'",con);
            SqlDataReader read = cmd.ExecuteReader();
            if(read.HasRows)
            {
                GridView1.DataSource = read;
                GridView1.DataBind();
                Label3.Text = "Data Found...";
            }
            else
            {
                Label3.Text = "Data Not Found";
            }
            con.Close();
            
            update.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            super.Visible=true;

            SqlConnection con = new SqlConnection("Data Source=(localdb)\\dronz;Initial Catalog=SchoolManagement;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("select *from students where Name='"+ Name.Text + "'",con);
            SqlDataReader read = cmd.ExecuteReader();
            if(read.HasRows)
            {
                GridView2.DataSource = read;
                GridView2.DataBind();
                Label14.Text = "Data Found";
            }
            else
            {
                Label14.Text = "Data Not Found..";
            }
            con.Close();

            Update2.Visible = true;
        }

        

        protected void Updatebtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(localdb)\\dronz;Initial Catalog=SchoolManagement;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("update students set Name='"+ NameUpdate.Text + "' where RollNumber='"+ Roll.Text +"'",con);
            int ra = cmd.ExecuteNonQuery();
            con.Close();
            if(ra > 0)
            {
                Label3.Text = "Update Successful";
            }
            else
            {
                Label3.Text = "Update Unsuccessful";
            }
            sup.Visible= true;
            update.Visible = true;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(localdb)\\dronz;Initial Catalog=SchoolManagement;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("update students set FatherName='" + UpdateFather.Text + "' where RollNumber='" + Roll.Text + "'", con);
            int ra = cmd.ExecuteNonQuery();
            con.Close();
            if (ra > 0)
            {
                Label3.Text = "Update Successful";
            }
            else
            {
                Label3.Text = "Update Unsuccessful";
            }
            sup.Visible = true;
            update.Visible = true;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(localdb)\\dronz;Initial Catalog=SchoolManagement;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("update students set MotherName='" + UpdateMother.Text + "' where RollNumber='" + Roll.Text + "'", con);
            int ra = cmd.ExecuteNonQuery();
            con.Close();
            if (ra > 0)
            {
                Label3.Text = "Update Successful";
            }
            else
            {
                Label3.Text = "Update Unsuccessful";
            }
            sup.Visible = true;
            update.Visible = true;
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(localdb)\\dronz;Initial Catalog=SchoolManagement;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("update students set ContactNumber='" + UpdateContact.Text + "' where RollNumber='" + Roll.Text + "'", con);
            int ra = cmd.ExecuteNonQuery();
            con.Close();
            if (ra > 0)
            {
                Label3.Text = "Update Successful";
            }
            else
            {
                Label3.Text = "Update Unsuccessful";
            }
            sup.Visible = true;
            update.Visible = true;
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(localdb)\\dronz;Initial Catalog=SchoolManagement;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("update students set Address='" + UpdateAddress.Text + "' where RollNumber='" + Roll.Text + "'", con);
            int ra = cmd.ExecuteNonQuery();
            con.Close();
            if (ra > 0)
            {
                Label3.Text = "Update Successful";
            }
            else
            {
                Label3.Text = "Update Unsuccessful";
            }
            sup.Visible = true;
            update.Visible = true;
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(localdb)\\dronz;Initial Catalog=SchoolManagement;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("update students set RollNumber='" + UpdateRoll.Text + "' where Name='" + Name.Text + "'", con);
            int ra = cmd.ExecuteNonQuery();
            con.Close();
            if (ra > 0)
            {
                Label14.Text = "Update Successful";
            }
            else
            {
                Label14.Text = "Update Unsuccessful";
            }
            super.Visible = true;
            Update2.Visible = true;
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(localdb)\\dronz;Initial Catalog=SchoolManagement;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("update students set FatherName='" + UpdateFather1.Text + "' where Name='" + Name.Text + "'", con);
            int ra = cmd.ExecuteNonQuery();
            con.Close();
            if (ra > 0)
            {
                Label14.Text = "Update Successful";
            }
            else
            {
                Label14.Text = "Update Unsuccessful";
            }
            super.Visible = true;
            Update2.Visible = true;
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(localdb)\\dronz;Initial Catalog=SchoolManagement;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("update students set MotherName='" + UpdateMother1.Text + "' where Name='" + Name.Text + "'", con);
            int ra = cmd.ExecuteNonQuery();
            con.Close();
            if (ra > 0)
            {
                Label14.Text = "Update Successful";
            }
            else
            {
                Label14.Text = "Update Unsuccessful";
            }
            super.Visible = true;
            Update2.Visible = true;
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(localdb)\\dronz;Initial Catalog=SchoolManagement;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("update students set ContactNumber='" + UpdateContact1.Text + "' where Name='" + Name.Text + "'", con);
            int ra = cmd.ExecuteNonQuery();
            con.Close();
            if (ra > 0)
            {
                Label14.Text = "Update Successful";
            }
            else
            {
                Label14.Text = "Update Unsuccessful";
            }
            super.Visible = true;
            Update2.Visible = true;
        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(localdb)\\dronz;Initial Catalog=SchoolManagement;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("update students set Address='" + UpdateAddress1.Text + "' where Name='" + Name.Text + "'", con);
            int ra = cmd.ExecuteNonQuery();
            con.Close();
            if (ra > 0)
            {
                Label14.Text = "Update Successful";
            }
            else
            {
                Label14.Text = "Update Unsuccessful";
            }
            super.Visible = true;
            Update2.Visible = true;
        }
    }
}