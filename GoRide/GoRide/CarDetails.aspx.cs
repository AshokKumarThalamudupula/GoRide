using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GoRide
{
    public partial class CarDetails : System.Web.UI.Page
    {
        Model model = new Model();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Type"].ToString() == "Owner")
                txtUserID.Text = Session["userid"].ToString();
           
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            model.CarDetail_UserID = txtUserID.Text;
            model.CarDetail_CarNumber = txtCarNumber.Text;
            model.CarDetail_CarModel = txtCarModel.Text;
            model.CarDetail_PickUp = txtPickupAddress.Text;
            model.CarDetail_Drop = txtDropAddress.Text;
            model.CarDetail_Fare = Convert.ToInt32(txtFare.Text);
            model.CarDetail_NumberOfSeats = Convert.ToInt32(txtSeats.Text);
         
           
        }
    }
}