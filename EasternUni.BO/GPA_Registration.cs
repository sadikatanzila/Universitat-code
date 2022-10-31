using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EasternUni.BO
{
    public class GPA_Registration
    {

        public int Sl { get; set; }
        public string Name { get; set; }
        public string FatherName { get; set; }
        public string MotherName { get; set; }
        public string Institution { get; set; }
        public string HSC_Year { get; set; }
        public string Subject { get; set; }
        public string Roll { get; set; }
        public string Board { get; set; }
        public string Pre_Address { get; set; }
        public string MobileNo { get; set; }
        public string Email { get; set; }
        public string GPA { get; set; }


        public DateTime InsertionTime { get; set; }
        public DateTime UpdateTime { get; set; }
        public int UserID { get; set; }
        public int UpdateUser { get; set; }
        public DateTime DataInsert_Time { get; set; }



        public string Event { get; set; }
        public string TruckingExt { get; set; }
        public int Deleted { get; set; }
        public string RegNo { get; set; }
        

         public GPA_Registration()
        { }

         public GPA_Registration(int Sl,
        string Name,
             string Event,

        string FatherName,
        string MotherName,
        string Institution,
        string HSC_Year,
        string Subject,
        string Roll,
        string Board,
        string Pre_Address,
        string MobileNo,
        string Email,
        string GPA,
 int UpdateUser,
DateTime DataInsert_Time,
        DateTime InsertionTime,
        DateTime UpdateTime, string TruckingExt, int Deleted,
        int UserID, string RegNo)
         {
             this.Event = Event;
             this.Sl = Sl;
             this.Name = Name;
             this.FatherName = FatherName;
             this.MotherName = MotherName;
             this.Institution = Institution;
             this.HSC_Year = HSC_Year;
             this.Subject = Subject;
             this.Roll = Roll;
             this.Board = Board;
             this.Pre_Address = Pre_Address;
             this.MobileNo = MobileNo;
             this.Email = Email;
             this.GPA = GPA;
             this.UserID = UserID;
             this.InsertionTime = InsertionTime;
             this.UpdateUser = UpdateUser;
             this.UpdateTime = UpdateTime;
             this.DataInsert_Time = DataInsert_Time;
             this.TruckingExt = TruckingExt;
             this.Deleted = Deleted;
             this.RegNo = RegNo;
         }

    }
}
