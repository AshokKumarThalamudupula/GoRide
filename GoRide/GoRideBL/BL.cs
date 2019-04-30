using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GoRideDAL;
using GoRide;
using GoRideDAL;

namespace GoRideBL
{
   public class BL
    {
       DAL dal;
       public BL()
       {
           dal = new DAL();
       }

       //-------- USER---------------

        public bool InsertUser (Model User)
        {
            bool bResult=dal.InsertUserToDatabase(User);
            return bResult;
        }
        public List<Model> GetUsers()
        {
            return dal.GetAllUsersFromDatabase();
        }

        public void GetUsers(Model usr)
        {
            throw new NotImplementedException();
        }

       //-------------CAR DETAIL---------------------

        public bool InsertCarDetail(Model CarDetail)
        {
            bool bResult = dal.InsertCarDetailToDatabase(CarDetail);
            return bResult;
        }
        public List<Model> GetCarDetails()
        {
            return dal.GetAllCarDetailsFromDatabase();
        }

        public void GetCarDetails(Model cd)
        {
            throw new NotImplementedException();
        }

       //----------BOOKING-----------------

        public bool InsertBooking(Model Booking)
        {
            bool bResult = dal.InsertBookingToDatabase(Booking);
            return bResult;
        }
        public List<Model> GetBookings()
        {
            return dal.GetAllBookingsFromDatabase();
        }

        public void GetBookings(Model bk)
        {
            throw new NotImplementedException();
        }

    }
}

