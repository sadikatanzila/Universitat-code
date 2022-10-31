using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EasternUni.BO
{
  public  class HR_Subject
    {

       public int SubjectID { get; set; }
       public string Subject { get; set; }

        public string Department { get; set; }
        public int DepartmentID { get; set; }
        

       
        public int CreatedBy { get; set; }
        public int UpdatedBy { get; set; }
        public DateTime? CreateDate { get; set; }
        public DateTime? UpdateDate { get; set; }


        public string Priority { get; set; }

        public HR_Subject()
        { }

        public HR_Subject(int SubjectID, string Subject, int DepartmentID, string Priority, string Department, Nullable<DateTime> CreateDate,
            Nullable<DateTime> UpdateDate, int CreatedBy, int UpdatedBy)
        {
            this.SubjectID = SubjectID;
            this.DepartmentID = DepartmentID;
            this.Subject = Subject;
            this.Department = Department;
           
            this.CreateDate = CreateDate;
            this.UpdateDate = UpdateDate;
            this.CreatedBy = CreatedBy;
            this.UpdatedBy = UpdatedBy;
            this.Priority = Priority;

        }
    }
}
