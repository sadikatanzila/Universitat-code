using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EasternUni.BO
{
    public class MathOlympiad
    {
        public int Sl { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string Cell { get; set; }
        public string StudentID { get; set; }
        public string Institution { get; set; }
        public string SSC_Olevel { get; set; }
        public string Year { get; set; }
        public string Roll { get; set; }
        public string Registration { get; set; }
        public string GPA { get; set; }
        public string PicLocation { get; set; }



        public string Board { get; set; }
        public DateTime InsertionTime { get; set; }
        public DateTime UpdateTime { get; set; }
        public int UserID { get; set; }
        public int UpdateUser { get; set; }
        public DateTime DataInsert_Time { get; set; }

        public string TruckingExt { get; set; }
        public int Deleted { get; set; }
        

        public MathOlympiad()
        { }

        public MathOlympiad(int Sl, string Name, string Email,string PicLocation,
            string Cell, string StudentID, string Institution, string SSC_Olevel,
            string Year, string Roll, string Registration, string GPA,int Deleted,
            string Board, int UserID,int UpdateUser, DateTime InsertionTime, string TruckingExt,
            DateTime UpdateTime, DateTime DataInsert_Time)
        {

            this.Sl = Sl;
            this.Name = Name;
            this.Email = Email;
            this.Cell = Cell;

            this.StudentID = StudentID;
            this.Institution = Institution;
            this.SSC_Olevel = SSC_Olevel;
            this.Year = Year;
            this.Roll = Roll;
            this.Year = Year;
            this.Registration = Registration;
            this.GPA = GPA;
            this.PicLocation = PicLocation;

            this.Deleted = Deleted;
            this.TruckingExt = TruckingExt;
            this.DataInsert_Time = DataInsert_Time;
            this.Board = Board;
            this.InsertionTime = InsertionTime;
            this.UpdateTime = UpdateTime;
            this.UserID = UserID;
            this.UpdateUser = UpdateUser;
        }
    }
}
