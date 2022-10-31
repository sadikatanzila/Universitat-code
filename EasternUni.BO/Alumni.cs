using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EasternUni.BO
{
    [Serializable()]
   public class Alumni
    {
        public int Sl { get; set; }
        public string Name { get; set; }
        public int Graduation_ID { get; set; }
        public int GraduationFacultyID { get; set; }
        public string GraduationFaculty { get; set; }
        public int GraProg_ID { get; set; }
        public string GraProg { get; set; }
        public int GraSubj_ID { get; set; }
        public string GraSubject { get; set; }        
        public int GraShiftID { get; set; }
        public string GraShift { get; set; }
        public int GraTypesID { get; set; }
        public string GraTypes { get; set; }
        public string PassingMonth_Graguate { get; set; }
        public string PassingYear_Graguate { get; set; }
        public int SemisterID_Graduate { get; set; }
        public string Semister_Graduate { get; set; }





        public int UnderGraduation_ID { get; set; }
        public int UnderGraduationFacultyID { get; set; }
        public string UnderGraduationFaculty { get; set; }
        public int UnderGraProg_ID { get; set; }
        public string UnderGraProg { get; set; }

        public int UnderGraSubj_ID { get; set; }
        public string UnderGraSubj { get; set; }

        public int UndrGraShiftID { get; set; }
        public string UndrGraShift { get; set; }
        public int UndrGraTypesID { get; set; }
        public string UndrGraTypes { get; set; }
        public string PassingMonth_UnderGraduate { get; set; }
        public string PassingYear_UnderGraduate { get; set; }
        public int SemisterID_UnderGraduate { get; set; }
        public string Semister_UnderGraduate { get; set; }





        public string Priority { get; set; }
        public string Occupation { get; set; }
        public string Designation { get; set; }
        public string Present_Address { get; set; }
        public string Present_ContactNo { get; set; }
        public string Present_Mobile { get; set; }
        public string Permanent_Address { get; set; }
        public string Permanent_ContactNo { get; set; }
        public string Permanent_Mobile { get; set; }

        public string Job_Office { get; set; }
        public string JobOffice_PhnNo { get; set; }
        public string Job_Location { get; set; }
        public string Job_Experience { get; set; }
        public string EMail_Address { get; set; }
        public string Father_Name { get; set; }
        public string Father_Occupation { get; set; }
        public string Mother_Name { get; set; }
        public string Mother_Occupation { get; set; }
        public string Marital_Status { get; set; }

        public string Spouse { get; set; }
        public string Child_dtl { get; set; }
        public string Religion { get; set; }
        public string Blood_Group { get; set; }

        public DateTime Date_Birth { get; set; }
        public string PictureLocation { get; set; }
        public int Confirmation { get; set; }
        public DateTime Posting_Date { get; set; }
        public int UserID { get; set; }
        public DateTime InsertionTime { get; set; }
        public int UpdateUser { get; set; }
        public DateTime UpdateTime { get; set; }

        public Alumni()
        { }

        public Alumni
            (int Sl,string Name  ,int GraduationFacultyID, int GraProg_ID ,int GraShiftID,int GraTypesID,string PassingMonth_Graguate ,String PassingYear_Graguate  ,int UnderGraduationFacultyID  ,   
            int UnderGraProg_ID  ,int UndrGraShiftID,int UndrGraTypesID,string PassingMonth_UnderGraduate ,string PassingYear_UnderGraduate  ,int SemisterID_Graduate,    int UnderGraduation_ID,  int Graduation_ID,
            int SemisterID_UnderGraduate     ,string Priority     ,string Occupation    ,string Designation     ,String Present_Address   ,     string Present_ContactNo   ,     string Present_Mobile     ,   
            string Permanent_Address   ,     string Permanent_ContactNo  ,      string Permanent_Mobile    ,    string Job_Office        ,string JobOffice_PhnNo  ,      string Job_Location   ,     
            string Job_Experience   ,     string EMail_Address    ,    string Father_Name      ,  string Father_Occupation  ,      string Mother_Name      ,  string Mother_Occupation  ,      string Marital_Status   ,     string Child_dtl      ,
            string Religion, string Blood_Group, DateTime Date_Birth, string PictureLocation, int Confirmation,
            DateTime Posting_Date    , int UserID     ,DateTime InsertionTime,  int UpdateUser     ,DateTime UpdateTime
            , int GraSubj_ID, string GraSubject, int UnderGraSubj_ID, string UnderGraSubj)
        
        {
                this.Sl=Sl;
                this.Name  = Name  ;


                this.GraSubj_ID = GraSubj_ID;
                this.GraSubject = GraSubject;
                this.UnderGraSubj_ID = UnderGraSubj_ID;
                this.UnderGraSubj = UnderGraSubj;



                this.Graduation_ID = Graduation_ID;
                this.GraduationFacultyID     = GraduationFacultyID     ;
                this.GraProg_ID     = GraProg_ID     ;
                this.GraShiftID=GraShiftID;
                this.GraTypesID=GraTypesID;
                this.PassingMonth_Graguate        = PassingMonth_Graguate        ;
                this.SemisterID_Graduate = SemisterID_Graduate;
                this.PassingYear_Graguate        = PassingYear_Graguate        ;

                this.UnderGraduation_ID = UnderGraduation_ID;
                this.UnderGraduationFacultyID     = UnderGraduationFacultyID     ;
                this.UnderGraProg_ID    = UnderGraProg_ID    ;
                this.UndrGraShiftID=UndrGraShiftID;
                this.UndrGraTypesID=UndrGraTypesID;
                this.PassingMonth_UnderGraduate        = PassingMonth_UnderGraduate        ;
                this.PassingYear_UnderGraduate        = PassingYear_UnderGraduate        ;
                this.SemisterID_UnderGraduate     = SemisterID_UnderGraduate     ;

                this.Priority        = Priority        ;

                this.Occupation        = Occupation        ;
                this.Designation        = Designation        ;

                this.Present_Address        = Present_Address        ;
                this.Present_ContactNo        = Present_ContactNo        ;
                this.Present_Mobile        = Present_Mobile        ;
                this.Permanent_Address        = Permanent_Address        ;
                this.Permanent_ContactNo        = Permanent_ContactNo        ;
                this.Permanent_Mobile        = Permanent_Mobile        ;

                this.Job_Office        = Job_Office        ;
                this.JobOffice_PhnNo        = JobOffice_PhnNo        ;
                this.Job_Location        = Job_Location        ;
                this.Job_Experience        = Job_Experience        ;

                this.EMail_Address        = EMail_Address        ;
                this.Father_Name        = Father_Name        ;
                this.Father_Occupation        = Father_Occupation        ;
                this.Mother_Name        = Mother_Name        ;
                this.Mother_Occupation        = Mother_Occupation        ;
                this.Marital_Status        = Marital_Status        ;
                this.Child_dtl        = Child_dtl        ;
                this.Religion        = Religion        ;
                this.Blood_Group        = Blood_Group        ;
                this.Date_Birth        = Date_Birth        ;
                this.PictureLocation        = PictureLocation        ;
                this.Confirmation     = Confirmation     ;
                this.Posting_Date     = Posting_Date     ;

                this.UserID     = UserID     ;
                this.InsertionTime     = InsertionTime     ;
                this.UpdateUser     = UpdateUser     ;
                this.UpdateTime     = UpdateTime     ;

        }

    }
}
