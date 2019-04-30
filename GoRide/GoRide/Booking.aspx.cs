using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GoRide
{
    public partial class Booking : System.Web.UI.Page
    {
        Model model = new Model();
        protected void Page_Load(object sender, EventArgs e)
        {
            /*if (Session["Type"].ToString() == "Owner")
                txtOwnerID.Text = Session["userid"].ToString();
            else
                txtRiderID.Text = Session["userid"].ToString();*/
        }

        protected void btnBook_Click(object sender, EventArgs e)
        {
            model.Booking_BookingID = txtBookingID.Text;
            model.Booking_RiderID = txtRiderID.Text;
            model.Booking_OwnerID = txtOwnerID.Text;
            model.Booking_Date = txtDate.Text;
            if (rdbCash.Checked == true)
                model.User_Gender = "Cash";
            if (rdbOnline.Checked == true)
                model.User_Gender = "Online";
           
        }

        protected void rdbCash_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}