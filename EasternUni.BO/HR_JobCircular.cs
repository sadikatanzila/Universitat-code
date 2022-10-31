using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EasternUni.BO
{
    public class HR_JobCircular
    {
        public int JobCircular_ID { get; set; }
        public string CircularNo { get; set; }
        public string Circular_IDGn { get; set; }
        public DateTime Deadline { get; set; }
        public int CreatedBy { get; set; }
        public DateTime CreateDate { get; set; }
        public int UpdatedBy { get; set; }
        public DateTime UpdateDate { get; set; }

        public int Year { get; set; }

        public int SemisterID { get; set; }
        public string SemisterName { get; set; }


        public string Value { get; set; }
        public bool? IsActive { get; set; }
       
        
       
       



        public HR_JobCircular()
        { }

        public HR_JobCircular(
            int JobCircular_ID,
            string CircularNo,
            string Circular_IDGn,
            DateTime Deadline,
            int CreatedBy,
            DateTime CreateDate,
            int UpdatedBy,
            DateTime UpdateDate,
             int SemisterID,
            string SemisterName, 
            int Year,

          string Value,
          Nullable<bool> IsActive
            )
        {

            this.JobCircular_ID = JobCircular_ID;
            this.CircularNo = CircularNo;
            this.Circular_IDGn = Circular_IDGn;
            this.Value = Value;
            this.IsActive = IsActive;
            this.SemisterID = SemisterID;
            this.SemisterName = SemisterName;
            this.Year = Year;
            this.Deadline = Deadline;
            this.CreatedBy = CreatedBy;
            this.CreateDate = CreateDate;
            this.UpdatedBy = UpdatedBy;
            this.UpdateDate = UpdateDate;
            
          

        }
    }

}

