using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GoRideBL;
using System.Windows.Forms;



namespace GoRide
{
    public partial class User : System.Web.UI.Page
    {
        Model model = new Model();
        BL bl = new BL();
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            model.User_Name = txtName.Text;
            model.User_UserID = txtUserID.Text;
            model.User_Password = txtPassword.Text;
            model.User_Age =Convert.ToInt32( txtAge.Text);
            if (rdbMale.Checked == true)
                model.User_Gender = "Male";
            if (rdbFemale.Checked == true)
                model.User_Gender = "Female";
            model.User_Phone = Convert.ToInt64(txtPhone.Text);
            model.User_Address = txtAddress.Text;
            if (bl.InsertUser(model) == true)
            {
                MessageBox.Show("User Successfully created!");
                Response.Redirect("You.aspx");
            }
            else
            {
                MessageBox.Show("Problem");
            }
           
           
        }

       
    }
}
