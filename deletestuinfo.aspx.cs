using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SchoolManagement
{
    public partial class deletestuinfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Button2.Visible=false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(localdb)\\dronz;Initial Catalog=SchoolManagement;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("select *from students where RollNumber='"+ Roll.Text +"'",con);
            SqlDataReader read = cmd.ExecuteReader();
            if(read.HasRows)
            {
                GridView1.Visible = true;
                GridView1.DataSource = read;
                GridView1.DataBind();
                Label1.Text = "Data Found....";
            }
            else
            {
                GridView1.Visible = false;
                Label1.Text = "Data Not Found...";
            }
            con.Close();

            Button2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection("Data Source=(localdb)\\dronz;Initial Catalog=SchoolManagement;Integrated Security=True");
                con.Open();
                SqlCommand cmd = new SqlCommand("delete students where RollNumber='" + Roll.Text + "'", con);
                int rowaff = cmd.ExecuteNonQuery();
                con.Close();

                if (rowaff > 0)
                {
                    Label1.Text = "deleted successfully";
                }
                else
                {
                    Label1.Text = "delete unsuccessful or record not found";
                }
            }
            catch(Exception ex)
            {
                Label1.Text = "an error occured during operation";
            }
        }
    }
}