using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EasternUni.BO
{
    public class HR_JobPost
    {
        public int JobPost_ID { get; set; }
        public int JobCircular_ID { get; set; }
        public string Value { get; set; }
        public bool? IsActive { get; set; }

        public int SubjectID { get; set; }
        public string Subject { get; set; }

        public int JobType_Id { get; set; }
        public string Job_Post { get; set; }

        public int DepartmentID { get; set; }
        public string Department { get; set; }

        public int JobCat_Id { get; set; }
        public string Category { get; set; }

        public int Year { get; set; }

        public int SemisterID { get; set; }
        public string SemisterName { get; set; }

        public DateTime Start_Date { get; set; }
        public DateTime Deadline { get; set; }
        public int CreatedBy { get; set; }
        public DateTime CreateDate { get; set; }
        public int UpdatedBy { get; set; }
        public DateTime UpdateDate { get; set; }
       
        public string Responsibility { get; set; }
        public string Nature { get; set; }
        public string Educational_Req { get; set; }

        public string JobTime_Experience { get; set; }
        public string Working_Experience { get; set; }

        public string Additional_Req { get; set; }
        public string Job_Location { get; set; }
        public string Salary_Range { get; set; }

        public string TruckingExt { get; set; }

        public string CircularNo { get; set; }
        public string Circular_IDGn { get; set; }


        public HR_JobPost()
        { }

        public HR_JobPost(
            int JobPost_ID,
            string CircularNo,
            string Circular_IDGn,
          int JobCircular_ID,
          string Value,
          Nullable<bool> IsActive,
          int JobType_Id,

        string Job_Post,
        int JobCat_Id,
        string Category,


          DateTime Start_Date,
          DateTime Deadline,
          int CreatedBy,
          DateTime CreateDate,
          int UpdatedBy,
          DateTime UpdateDate,
          int SubjectID,
            string Subject ,
          string Responsibility,
          string Nature,
          string Educational_Req,
          string JobTime_Experience,
            string Working_Experience,
          string Additional_Req,
          string Job_Location,
          string Salary_Range,
int DepartmentID,  string Department,
             int SemisterID,
            string SemisterName, int Year, string TruckingExt
            )
        {
            this.JobPost_ID = JobPost_ID;
            this.CircularNo = CircularNo;
            this.Circular_IDGn = Circular_IDGn;

            this.JobCircular_ID = JobCircular_ID;
            this.Value = Value;
            this.IsActive = IsActive;

            this.JobType_Id = JobType_Id;
            this.Job_Post = Job_Post;

            this.JobCat_Id = JobCat_Id;
            this.Category = Category;

            this.SubjectID = SubjectID;
            this.Subject = Subject;

            this.DepartmentID = DepartmentID;
            this.Department = Department;

            this.SemisterID = SemisterID;
            this.SemisterName = SemisterName;
            this.Year = Year;
            this.TruckingExt = TruckingExt;


            this.Start_Date = Start_Date;
            this.Deadline = Deadline;
            this.CreatedBy = CreatedBy;
            this.CreateDate = CreateDate;
            this.UpdatedBy = UpdatedBy;
            this.UpdateDate = UpdateDate;
            
            this.Responsibility = Responsibility;
            this.Nature = Nature;
            this.Educational_Req = Educational_Req;
            this.JobTime_Experience = JobTime_Experience;
            this.Working_Experience = Working_Experience;
            this.Additional_Req = Additional_Req;
            this.Job_Location = Job_Location;
            this.Salary_Range = Salary_Range;

        }
    }
}
