using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GoRide 
{
    public class Model
    {
        string Name, UserID, Password, Gender, Address, CarNumber, CarModel, PickUp, Drop, BookingID, RiderID, OwnerID, Date, Payment;
        int Age, Fare, NumberOfSeats;
        long Phone;
        public string User_Name
        {
            get { return Name; }
            set { Name = value; }
        }

        public string User_UserID
        {
            get { return UserID; }
            set { UserID = value; }
        }

        public int User_Age
        {
            get { return Age; }
            set { Age = value; }
        }

        public string User_Gender
        {
            get { return Gender; }
            set { Gender = value; }
        }

        public string User_Password
        {
            get { return Password; }
            set { Password = value; }
        }

        public long User_Phone
        {
            get { return Phone; }
            set { Phone = value; }
        }

        public string User_Address
        {
            get { return Address; }
            set { Address = value; }
        }

        public string CarDetail_UserID
        {
            get { return UserID; }
            set { UserID = value; }
        }

        public string CarDetail_CarNumber
        {
            get { return CarNumber; }
            set { CarNumber = value; }
        }
        public string CarDetail_CarModel
        {
            get { return CarModel; }
            set { CarModel = value; }
        }
        public string CarDetail_PickUp
        {
            get { return PickUp; }
            set { PickUp = value; }
        }
        public string CarDetail_Drop
        {
            get { return Drop; }
            set { Drop = value; }
        }
        public int CarDetail_Fare
        {
            get { return Fare; }
            set { Fare = value; }
        }
        public int CarDetail_NumberOfSeats
        {
            get { return NumberOfSeats; }
            set { NumberOfSeats = value; }
        }
        public string Booking_BookingID
        {
            get { return BookingID; }
            set { BookingID = value; }
        }
        public string Booking_RiderID
        {
            get { return RiderID; }
            set { RiderID = value; }
        }
        public string Booking_OwnerID
        {
            get { return OwnerID; }
            set { OwnerID = value; }
        }
        public string Booking_Date
        {
            get { return Date; }
            set { Date = value; }
        }
        public string Booking_Payment
        {
            get { return Payment; }
            set { Payment = value; }
        }
    }
}


