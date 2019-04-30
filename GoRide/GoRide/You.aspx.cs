using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GoRide
{
    public partial class You : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnOwner_Click(object sender, EventArgs e)
        {
            Session.Add("Type", "Owner");
            Response.Redirect("CarDetails.aspx");
        }

        protected void btnRider_Click(object sender, EventArgs e)
        {
            //Session.Add("Type", "Rider");
            Response.Redirect("Selection.aspx");
        }
    }
}