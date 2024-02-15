using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SchoolManagement
{
    public partial class SchoolIndex : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            input.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            input.Visible=true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            input.Visible = true;
            if(id.Text==string.Empty || pass.Text==string.Empty)
            {
                Label1.Text = "please, enter id and password first";
            }
            else
            {
                
                if (id.Text == "dronz28" && pass.Text == "somesh")
                {
                    Response.Redirect("School.aspx");
                }
                else
                {
                    Label1.Text = "Wrong ID or Password, Try again...";
                }
            }
        }

        protected void Close_Click(object sender, EventArgs e)
        {
            input.Visible=false;
        }

    }
}