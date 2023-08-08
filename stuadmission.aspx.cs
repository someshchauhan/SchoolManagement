using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SchoolManagement
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string fees;

            if(Submited.Checked)
            {
                fees = "SUBMITED";
            }
            else
            {
                fees = "NOT SUBMITED";
            }
            
            SqlConnection con = new SqlConnection("Data Source=(localdb)\\dronz;Initial Catalog=SchoolManagement;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into students values('" + Roll.Text + "','" + Class.Value + "','" + Name.Text + "','" + Father.Text + "','" + Mother.Text + "','" + Contact.Text + "','" + Address.Text + "','" + fees + "')",con);
            cmd.ExecuteNonQuery();
            con.Close();

            Label8.Text = "YOUR ADMISSION DONE SUCCESSFULLY, THANKYOU..........";
        }
    }
}