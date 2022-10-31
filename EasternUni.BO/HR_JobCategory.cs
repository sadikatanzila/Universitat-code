using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EasternUni.BO
{
    [Serializable()]
    public class HR_JobCategory
    {
        public int JobCat_Id { get; set; }
        public string Category { get; set; }
        public string Priority { get; set; }
        public int CreatedBy { get; set; }
        public int UpdatedBy { get; set; }
        public DateTime? CreateDate { get; set; }
        public DateTime? UpdateDate { get; set; }

        public HR_JobCategory()
        { }

        public HR_JobCategory(int JobCat_Id, string Category, string Priority,Nullable<DateTime> CreateDate,
            Nullable<DateTime> UpdateDate, int Faculty_ID, int CreatedBy)
        {
            this.JobCat_Id = JobCat_Id;
            this.Category = Category;
            this.Priority = Priority;
            this.CreateDate = CreateDate;
            this.UpdateDate = UpdateDate;
            this.CreatedBy = CreatedBy;
            this.UpdatedBy = UpdatedBy;

        }
    }
}
