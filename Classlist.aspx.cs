using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SchoolManagement
{
    public partial class Classlist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using(SqlConnection con = new SqlConnection("Data Source=(localdb)\\dronz;Initial Catalog=SchoolManagement;Integrated Security=True"))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select *from students where Class='"+ Select1.Value +"' ORDER BY RollNumber", con);
                SqlDataReader read = cmd.ExecuteReader();
                if(read.HasRows)
                {
                    GridView1.DataSource = read;
                    GridView1 .DataBind();
                    GridView1.Visible = true;
                    Label2.Text = "Data Found";
                }
                else
                {
                    GridView1.Visible= false;
                    Label2.Text = "Data Not Found";
                }
                con.Close();
            }
        }
    }
}