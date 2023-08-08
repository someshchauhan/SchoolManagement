using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SchoolManagement
{
    public partial class principal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            SqlConnection con = new SqlConnection("Data Source=(localdb)\\dronz;Initial Catalog=SchoolManagement;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("select *from Principals", con);
            SqlDataReader rdr = cmd.ExecuteReader();
            if(rdr.HasRows)
            {
                GridView1.DataSource = rdr;
                GridView1.DataBind();
                Label1.Text = "DATA AVAILABLE...";
            }
            else
            {
                Label1.Text = "DATA NOT AVAILABLE...";
            }
            con.Close();
            
        }
    }
}