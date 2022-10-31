using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EasternUni.BO
{
  public  class HR_JobType
    {
        public int JobType_Id { get; set; }
        public string Job_Post { get; set; }

        public int DepartmentID { get; set; }
        public string Department { get; set; }


        public int JobCat_Id { get; set; }
        public string Category { get; set; }

       
        public int CreatedBy { get; set; }
        public int UpdatedBy { get; set; }
        public DateTime? CreateDate { get; set; }
        public DateTime? UpdateDate { get; set; }


        public string Priority { get; set; }

        public HR_JobType()
        { }

        public HR_JobType(int DepartmentID,string Department, int JobType_Id, string Priority,string Job_Post, Nullable<DateTime> CreateDate,
            Nullable<DateTime> UpdateDate, int Faculty_ID, int CreatedBy,string Category, int JobCat_Id)
        {
            this.JobType_Id = JobType_Id;
            this.Job_Post = Job_Post;

            this.DepartmentID = DepartmentID;
            this.Department = Department;        


            this.JobCat_Id = JobCat_Id;
            this.Category = Category;
           
            this.CreateDate = CreateDate;
            this.UpdateDate = UpdateDate;
            this.CreatedBy = CreatedBy;
            this.UpdatedBy = UpdatedBy;
            this.Priority = Priority;

        }
    }
}
