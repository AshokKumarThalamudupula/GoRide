using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using GoRide;
using System.Configuration;



namespace GoRideDAL
{
    public class DAL
    {
        SqlConnection con;
        SqlCommand cmdInsertUser, cmdSelectUser, cmdInsertCarDetail, cmdSelectCarDetail, cmdInsertBooking, cmdSelectBooking;
        SqlDataAdapter daSelectUsers, daSelectCarDetails, daSelectBookings;
        public DAL()

           

        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["myCon"].ConnectionString);

            //----------USER
            cmdInsertUser = new SqlCommand("procInsertUser", con);
            cmdInsertUser.Parameters.Add("@Name", SqlDbType.VarChar, 50);
            cmdInsertUser.Parameters.Add("@UserID", SqlDbType.VarChar, 50);
            cmdInsertUser.Parameters.Add("@Password", SqlDbType.VarChar, 15);
            cmdInsertUser.Parameters.Add("@Age", SqlDbType.Int);
            cmdInsertUser.Parameters.Add("@Gender", SqlDbType.VarChar, 15);
            cmdInsertUser.Parameters.Add("@Phone", SqlDbType.BigInt);
            cmdInsertUser.Parameters.Add("@Address", SqlDbType.VarChar, 50);
            cmdInsertUser.CommandType = CommandType.StoredProcedure;

            cmdSelectUser = new SqlCommand("procSelectAllUser", con);
            cmdSelectUser.CommandType = CommandType.StoredProcedure;

            //--------------CAR DETAIL
            cmdInsertCarDetail = new SqlCommand("procInsertCarDetail", con);
            cmdInsertCarDetail.Parameters.Add("@UserID", SqlDbType.VarChar, 50);
            cmdInsertCarDetail.Parameters.Add("@CarNumber", SqlDbType.VarChar, 15);
            cmdInsertCarDetail.Parameters.Add("@CarModel", SqlDbType.VarChar, 15);
            cmdInsertCarDetail.Parameters.Add("@PickUp", SqlDbType.VarChar, 50);
            cmdInsertCarDetail.Parameters.Add("@Drop", SqlDbType.VarChar, 50);
            cmdInsertCarDetail.Parameters.Add("@Fare", SqlDbType.Int);
            cmdInsertCarDetail.Parameters.Add("@NumberOfSeats", SqlDbType.Int);
            cmdInsertCarDetail.CommandType = CommandType.StoredProcedure;

            cmdInsertCarDetail = new SqlCommand("procSelectAllCarDetail", con);
            cmdInsertCarDetail.CommandType = CommandType.StoredProcedure;

            //--------------BOOKING
            cmdInsertBooking = new SqlCommand("procInsertBooking", con);
            cmdInsertBooking.Parameters.Add("@BookingID", SqlDbType.VarChar, 50);
            cmdInsertBooking.Parameters.Add("@RiderID", SqlDbType.VarChar, 50);
            cmdInsertBooking.Parameters.Add("@OwnerID", SqlDbType.VarChar, 50);
            cmdInsertBooking.Parameters.Add("@Date", SqlDbType.VarChar, 50);
            cmdInsertBooking.Parameters.Add("@Payment", SqlDbType.VarChar, 50);

            cmdInsertBooking = new SqlCommand("procSelectAllBooking", con);
            cmdInsertBooking.CommandType = CommandType.StoredProcedure;
        }



//----------USER--------------

        public bool InsertUserToDatabase(Model User)
        {
            bool bInserted = false;
            try
            {
                if (con.State == ConnectionState.Open)
                    con.Close();
                con.Open();

                cmdInsertUser.Parameters[0].Value = User.User_Name;
                cmdInsertUser.Parameters[1].Value = User.User_UserID;
                cmdInsertUser.Parameters[2].Value = User.User_Password;
                cmdInsertUser.Parameters[3].Value = User.User_Age;
                cmdInsertUser.Parameters[4].Value = User.User_Gender;
                cmdInsertUser.Parameters[5].Value = User.User_Phone;
                cmdInsertUser.Parameters[6].Value = User.User_Address;
              


                if (cmdInsertUser.ExecuteNonQuery() == 1)
                    bInserted = true;
                return bInserted;
            }
            catch (SqlException se)
            {
                bInserted = false;

            }
            finally
            {
                con.Close();
            }
            return bInserted;
        }

        public List<Model> GetAllUsersFromDatabase()
        {
            List<Model> Users = new List<Model>();
            Model User = null;
            daSelectUsers = new SqlDataAdapter();
            daSelectUsers.SelectCommand = cmdSelectUser;
            DataSet dsUser = new DataSet();
            try
            {
                daSelectUsers.Fill(dsUser);
                foreach (DataRow dr in dsUser.Tables[0].Rows)
                {
                    User = new Model();
                    User.User_Name = dr[0].ToString();
                    User.User_UserID = dr[1].ToString();
                    User.User_Password = dr[2].ToString();
                    User.User_Age = Convert.ToInt32(dr[3].ToString());
                    User.User_Gender = dr[4].ToString();
                    User.User_Phone = Convert.ToInt32(dr[5].ToString());
                    User.User_Address = dr[6].ToString();
                    Users.Add(User);
                }
            }
            catch (Exception)
            {

                User = null;
            }
            return Users;

        }


//-------------CAR DETAIL---------------------

        public bool InsertCarDetailToDatabase(Model CarDetail)
        {
            bool bInserted = false;
            try
            {
                if (con.State == ConnectionState.Open)
                    con.Close();
                con.Open();

                cmdInsertCarDetail.Parameters[0].Value = CarDetail.CarDetail_UserID;
                cmdInsertCarDetail.Parameters[1].Value = CarDetail.CarDetail_CarNumber;
                cmdInsertCarDetail.Parameters[2].Value = CarDetail.CarDetail_CarModel;
                cmdInsertCarDetail.Parameters[3].Value = CarDetail.CarDetail_PickUp;
                cmdInsertCarDetail.Parameters[4].Value = CarDetail.CarDetail_Drop;
                cmdInsertCarDetail.Parameters[5].Value = CarDetail.CarDetail_Fare;
                cmdInsertCarDetail.Parameters[6].Value = CarDetail.CarDetail_NumberOfSeats;




                if (cmdInsertCarDetail.ExecuteNonQuery() == 1)
                    bInserted = true;
                return bInserted;
            }
            catch (SqlException se)
            {
                bInserted = false;

            }
            finally
            {
                con.Close();
            }
            return bInserted;
        }

        public List<Model> GetAllCarDetailsFromDatabase()
        {
            List<Model> CarDetails = new List<Model>();
            Model CarDetail = null;
            daSelectCarDetails = new SqlDataAdapter();
            daSelectCarDetails.SelectCommand = cmdSelectCarDetail;
            DataSet dsUser = new DataSet();
            try
            {
                daSelectBookings.Fill(dsUser);
                foreach (DataRow dr in dsUser.Tables[0].Rows)
                {
                    CarDetail = new Model();
                    CarDetail.CarDetail_UserID = dr[0].ToString();
                    CarDetail.CarDetail_CarNumber = dr[1].ToString();
                    CarDetail.CarDetail_CarModel = dr[2].ToString();
                    CarDetail.CarDetail_PickUp = dr[3].ToString();
                    CarDetail.CarDetail_Drop = dr[4].ToString();
                    CarDetail.CarDetail_Fare = Convert.ToInt32(dr[5].ToString());
                    CarDetail.CarDetail_NumberOfSeats = Convert.ToInt32(dr[6].ToString());
                    CarDetails.Add(CarDetail);
                }
            }
            catch (Exception)
            {

                CarDetail = null;
            }
            return CarDetails;

        }


//----------- Booking--------------------

        public bool InsertBookingToDatabase(Model Booking)
        {
            bool bInserted = false;
            try
            {
                if (con.State == ConnectionState.Open)
                    con.Close();
                con.Open();

                cmdInsertBooking.Parameters[0].Value = Booking.Booking_BookingID;
                cmdInsertBooking.Parameters[1].Value = Booking.Booking_RiderID;
                cmdInsertBooking.Parameters[2].Value = Booking.Booking_OwnerID;
                cmdInsertBooking.Parameters[3].Value = Booking.Booking_Date;
                cmdInsertBooking.Parameters[4].Value = Booking.Booking_Payment;


                if (cmdInsertBooking.ExecuteNonQuery() == 1)
                    bInserted = true;
                return bInserted;
            }
            catch (SqlException se)
            {
                bInserted = false;

            }
            finally
            {
                con.Close();
            }
            return bInserted;
        }

        public List<Model> GetAllBookingsFromDatabase()
        {
            List<Model> Bookings = new List<Model>();
            Model Booking = null;
            daSelectBookings = new SqlDataAdapter();
            daSelectBookings.SelectCommand = cmdSelectBooking;
            DataSet dsBooking = new DataSet();
            try
            {
                daSelectBookings.Fill(dsBooking);
                foreach (DataRow dr in dsBooking.Tables[0].Rows)
                {
                    Booking = new Model();
                    Booking.Booking_BookingID = dr[0].ToString();
                    Booking.Booking_RiderID = dr[1].ToString();
                    Booking.Booking_OwnerID = dr[2].ToString();
                    Booking.Booking_Date = dr[3].ToString();
                    Booking.Booking_Payment = dr[4].ToString();
                    Bookings.Add(Booking);
                }
            }
            catch (Exception)
            {

                Booking = null;
            }
            return Bookings;

        }

    }
}

/*public bool LoginVerification(string id, string password)
{
    cmdLogin=new SqlCommand("uspLoginVerification",con);
    cmdLogin.CommandType = CommandType.StoredProcedure;
            cmdLogin.Parameters.Add("@id", SqlDbType.VarChar);
            cmdLogin.Parameters.Add("@password", SqlDbType.Text);

            if (con.State == ConnectionState.Open)
                con.Close();
            con.Open();
            cmdLogin.Parameters[0].Value = id;
            cmdLogin.Parameters[1].Value = pass;
            string n = cmdLogin.ExecuteScalar().ToString();
            con.Close();
            if (n == "1")
            {
                return true;
            }
            else
            {
                return false;
                
            }
           
        }
        
           
}*/