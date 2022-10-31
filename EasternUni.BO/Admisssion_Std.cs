using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EasternUni.BO
{
     [Serializable()]
   public class Admisssion_Std
    {
         public int Sl_No { get; set; }
         public int Admission_TypeID { get; set; }
         public int Admission_SemisterID { get; set; }
         public string Year { get; set; }
         public string Passing_Std_Sl { get; set; }
         public string Total_Student { get; set; }
         public string Date_SrtFrm { get; set; }
         public string Dateline { get; set; }
         public string Admission_Fee { get; set; }
         public string Admission_Date { get; set; }
         public string Admission_Month { get; set; }
         public string Admission_Year { get; set; }

         public string Admission_Type { get; set; }
         public string Admission_Semister { get; set; }

         public string Orientation { get; set; }
         public string Classes_Start { get; set; }

        public Admisssion_Std()
        { }

        public Admisssion_Std(int Sl_No, int Admission_TypeID, int Admission_SemisterID, string Admission_Year,
            string Passing_Std_Sl, string Total_Student, string Date_SrtFrm, string Dateline, string Year,
            string Admission_Fee, string Admission_Date, string Admission_Month,
            string Admission_Type, string Admission_Semister, string Orientation, string Classes_Start)
        {
            this.Sl_No = Sl_No;
            this.Admission_TypeID = Admission_TypeID;
            this.Admission_SemisterID = Admission_SemisterID;
            this.Year = Year;
            this.Passing_Std_Sl = Passing_Std_Sl;
            this.Total_Student = Total_Student;
            this.Date_SrtFrm = Date_SrtFrm;
            this.Dateline = Dateline;
            this.Admission_Fee = Admission_Fee;
            this.Admission_Date = Admission_Date;
            this.Admission_Month = Admission_Month;
            this.Admission_Year = Admission_Year;
            this.Admission_Type = Admission_Type;
            this.Admission_Semister = Admission_Semister;
            this.Orientation = Orientation;
            this.Classes_Start = Classes_Start;
        }


    }
}
