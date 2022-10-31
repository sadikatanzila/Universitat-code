using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EasternUni.BO
{
     [Serializable()]
   public class Addmission_LastDate
    {
         public int ID { get; set; }
         public int Admission_TypeID { get; set; }
         public int Admission_SemisterID { get; set; }

         public string Admission_Year { get; set; }
         public string App_LastDate { get; set; }
         public string Admission_Date { get; set; }
         public string Admission_Office { get; set; }
         public string Foreigners_Office { get; set; }

         public DateTime InsertionTime { get; set; }
         public DateTime UpdateTime { get; set; }
         public int UserID { get; set; }
         public int UpdateUser { get; set; }

         public string Admission_Type { get; set; }
         public string Admission_Semister { get; set; }

        public Addmission_LastDate()
        { }

        public Addmission_LastDate(int ID, int Admission_TypeID, int Admission_SemisterID, string Admission_Year,
            string App_LastDate, string Admission_Date, string Admission_Office, string Year,
            string Foreigners_Office, string Admission_Type, string Admission_Semister, int UserID,
            int UpdateUser, DateTime InsertionTime, DateTime UpdateTime)
        {
            this.ID = ID;
            this.Admission_TypeID = Admission_TypeID;
            this.Admission_SemisterID = Admission_SemisterID;
            this.Admission_Year = Admission_Year;
            this.App_LastDate = App_LastDate;
            this.Admission_Date = Admission_Date;
            this.Admission_Office = Admission_Office;
            this.Foreigners_Office = Foreigners_Office;
            this.InsertionTime = InsertionTime;
            this.UpdateTime = UpdateTime;
            this.UserID = UserID;
            this.UpdateUser = UpdateUser;
           
            this.Admission_Type = Admission_Type;
            this.Admission_Semister = Admission_Semister;
        }

    }
}
