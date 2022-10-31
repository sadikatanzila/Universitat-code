using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EasternUni.BO
{
  public  class HR_Department
    {
      public int DepartmentID { get; set; }
      public string Department { get; set; }

        public int JobCat_Id { get; set; }
        public string Category { get; set; }

       
        public int CreatedBy { get; set; }
        public int UpdatedBy { get; set; }
        public DateTime? CreateDate { get; set; }
        public DateTime? UpdateDate { get; set; }


        public string Priority { get; set; }

        public HR_Department()
        { }

        public HR_Department(int DepartmentID, string Category, int JobCat_Id, string Priority, string Department, Nullable<DateTime> CreateDate,
            Nullable<DateTime> UpdateDate, int UpdatedBy, int CreatedBy)
        {
            this.DepartmentID = DepartmentID;
            this.JobCat_Id = JobCat_Id;
            this.Category = Category;
            this.Department = Department;
           
            this.CreateDate = CreateDate;
            this.UpdateDate = UpdateDate;
            this.CreatedBy = CreatedBy;
            this.UpdatedBy = UpdatedBy;
            this.Priority = Priority;

        }
    }
}
