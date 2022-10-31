using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EasternUni.BO
{
   public class HR_CanEdu
    {
       public int CanEdu_Sl { get; set; }
       public string TrackingNo { get; set; }
        public int ExamId { get; set; }
        public string Examination { get; set; }

        public int InstitutionType_ID { get; set; }
        public string InstitutionType { get; set; }

        public string Institution { get; set; }
        public string Passing_Year { get; set; }
        public string MajorSubject { get; set; }
        public string Result_Type { get; set; }
        public string Grade { get; set; }
        public string Devision { get; set; }
        public string Marks { get; set; }
        public string CGPA_outOf { get; set; }


        public string Result { get; set; }

        public HR_CanEdu()
        { }

        public HR_CanEdu(
              int CanEdu_Sl ,
         string TrackingNo,
         int ExamId ,
         string Examination ,

         int InstitutionType_ID ,
         string InstitutionType ,

         string Institution ,
         string Passing_Year ,
         string MajorSubject ,
         string Result_Type ,
         string Grade ,
         string Devision ,
         string Marks ,
         string CGPA_outOf, string Result)
           {


              this.CanEdu_Sl =CanEdu_Sl;
              this.TrackingNo = TrackingNo;
          this.ExamId=ExamId;
          this.Examination =Examination;

          this.InstitutionType_ID =InstitutionType_ID;
          this.InstitutionType =InstitutionType;

          this.Institution =Institution;
          this.Passing_Year =Passing_Year;
          this.MajorSubject =MajorSubject;
          this.Result_Type =Result_Type;
          this.Grade =Grade;
          this.Devision =Devision;
          this.Marks =Marks;
          this.CGPA_outOf = CGPA_outOf;
          this.Result = Result;


           }


    }
}
