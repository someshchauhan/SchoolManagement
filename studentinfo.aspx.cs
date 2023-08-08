using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services.Protocols;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SchoolManagement
{
    public partial class studentinfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            sup.Visible = false;
            super.Visible = false;
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
                SqlCommand cmd = new SqlCommand("select *from students where RollNumber='" + Roll.Text + "'", con);
                SqlDataReader reader = cmd.ExecuteReader();
                if(reader.HasRows)
                {
                GridView1.Visible = true;
                GridView1.DataSource = reader;
                GridView1.DataBind();
                Label3.Text = " Data Found";
                }
                else
                {
                    GridView1.Visible = false;
                Label3.Text = "Data Not Found";
                }
                con.Close();
            
        }

        

        protected void Button2_Click(object sender, EventArgs e)
        {
            super.Visible = true;

            SqlConnection con = new SqlConnection("Data Source=(localdb)\\dronz;Initial Catalog=SchoolManagement;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("select *from students where Name='" + Name.Text + "'", con);
            SqlDataReader reader = cmd.ExecuteReader();
            if(reader.HasRows)
            {
                GridView2.Visible = true;
                GridView2.DataSource = reader;
                GridView2.DataBind();
                Label4.Text = "Data Found";
            }
            else
            {
                GridView2.Visible = false;
                Label4.Text = "Data Not Found";
            }
            con.Close();
        }
    }
}