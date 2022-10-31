using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EasternUni.BO
{
    [Serializable()]
   public class NewsLetter
    {
        public int Serial_no { get; set; }
        public string Day { get; set; }
        public string Month { get; set; }
        public string Year { get; set; }
        public string PictureLocation { get; set; }
        public string Semister { get; set; }
        public int SemisterID { get; set; }
        public int UserID { get; set; }
        public DateTime InsertionTime { get; set; }
        public int UpdateUser { get; set; }
        public DateTime UpdateTime { get; set; }
        
         public NewsLetter()
        { }

         public NewsLetter(int Serial_no, string Day, string Month, string Year, string PictureLocation, string Semister, int SemisterID,
            int UserID, int UpdateUser, DateTime InsertionTime, DateTime UpdateTime)
        {
            this.Serial_no = Serial_no;
            this.Day = Day;
            this.Year = Year;
            this.Month = Month;
            this.PictureLocation = PictureLocation;
            this.Semister = Semister;
            this.SemisterID = SemisterID;

            this.InsertionTime = InsertionTime;
            this.UpdateTime = UpdateTime;
            this.UserID = UserID;
            this.UpdateUser = UpdateUser;
           
        }

    }
}
