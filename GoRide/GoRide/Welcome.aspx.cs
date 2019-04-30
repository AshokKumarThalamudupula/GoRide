using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GoRide
{
    public partial class Wecome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSingIn_Click(object sender, EventArgs e)
        {
            Session.Add("userid", txtUserId.Text);
            Response.Redirect("You.aspx");
        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("User.aspx");
        }

       
    }
}