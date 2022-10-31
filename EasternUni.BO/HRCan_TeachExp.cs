using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EasternUni.BO
{
    public class HRCan_TeachExp
    {
        public int Can_TeachExpID { get; set; }
        public string TrackingNo { get; set; }
        public string Uni_Inst { get; set; }
        public string Address { get; set; }

        public int FacultyID { get; set; }
        public string Faculty { get; set; }

        public string Faculty_others { get; set; }
        public string Subject { get; set; }

        public int DesignationID { get; set; }
        public string Designation { get; set; }

      //  public string Designation_others { get; set; }
        public string Job_Responsibility { get; set; }
        public string ResearchInst { get; set; }
        public string Supervisor { get; set; }
        public DateTime ExpFrm { get; set; }
        public DateTime ExpTo { get; set; }
        public string Tyear { get; set; }
        public string Tmonth { get; set; }
        public string Tday { get; set; }
        public DateTime InsertionTime { get; set; }
        public DateTime UpdateTime { get; set; }
        public string SprVisrContactNo { get; set; }

        public HRCan_TeachExp()
        { }

        public HRCan_TeachExp(
            int Can_TeachExpID,
       string TrackingNo,
       string Uni_Inst,
       string Address,
       int FacultyID,
       string Faculty_others,
       string Subject,
       int DesignationID,
      // string Designation_others,
       string Job_Responsibility,
       string ResearchInst,
       string Supervisor,
       DateTime ExpFrm,
       DateTime ExpTo,
       string Tyear,
       string Tmonth,
       string Tday,
       DateTime InsertionTime,
       DateTime UpdateTime,
            string Faculty, string Designation, string SprVisrContactNo
)
        {
            this.Faculty = Faculty;
            this.Designation = Designation;

            this.Can_TeachExpID = Can_TeachExpID;
            this.TrackingNo = TrackingNo;
            this.Uni_Inst = Uni_Inst;
            this.Address = Address;
            this.FacultyID = FacultyID;
            this.Faculty_others = Faculty_others;
            this.Subject = Subject;
            this.DesignationID = DesignationID;
         //   this.Designation_others = Designation_others;
            this.Job_Responsibility = Job_Responsibility;
            this.ResearchInst = ResearchInst;
            this.Supervisor = Supervisor;
            this.ExpFrm = ExpFrm;
            this.ExpTo = ExpTo;
            this.Tyear = Tyear;
            this.Tmonth = Tmonth;
            this.Tday = Tday;
            this.InsertionTime = InsertionTime;
            this.UpdateTime = UpdateTime;
            this.SprVisrContactNo = SprVisrContactNo;


        }
    }
}
