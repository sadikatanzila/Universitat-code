using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EasternUni.BO
{
    [Serializable()]
    public class AlumniCommittee
    {
        public int Sl { get; set; }
        public string Name { get; set; }
        public string Priority { get; set; }
        public int FacultyID { get; set; }
        public string Faculty { get; set; }

        public string Occupation { get; set; }
        public string Designation { get; set; }
        public string Present_Address { get; set; }
        public string Present_ContactNo { get; set; }
        public string MobileNo { get; set; }
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

        public AlumniCommittee()
        { }

        public AlumniCommittee
            (int Sl, string Name,
            int FacultyID, string Faculty,
            
            string Priority, string Occupation, string Designation, String Present_Address, string Present_ContactNo, string MobileNo,
            string Permanent_Address, string Permanent_ContactNo, string Permanent_Mobile, string Job_Office, string JobOffice_PhnNo, string Job_Location,
            string Job_Experience, string EMail_Address, string Father_Name, string Father_Occupation, string Mother_Name, string Mother_Occupation, string Marital_Status, string Child_dtl,
            string Religion, string Blood_Group, DateTime Date_Birth, string PictureLocation, int Confirmation,
            DateTime Posting_Date, int UserID, DateTime InsertionTime, int UpdateUser, DateTime UpdateTime
            , int GraSubj_ID, string GraSubject, int UnderGraSubj_ID, string UnderGraSubj)
        {
            this.Sl = Sl;
            this.Name = Name;


            this.FacultyID = FacultyID;
            this.Faculty = Faculty;
            

            this.Priority = Priority;

            this.Occupation = Occupation;
            this.Designation = Designation;

            this.Present_Address = Present_Address;
            this.Present_ContactNo = Present_ContactNo;
            this.MobileNo = MobileNo;
            this.Permanent_Address = Permanent_Address;
            this.Permanent_ContactNo = Permanent_ContactNo;
            this.Permanent_Mobile = Permanent_Mobile;

            this.Job_Office = Job_Office;
            this.JobOffice_PhnNo = JobOffice_PhnNo;
            this.Job_Location = Job_Location;
            this.Job_Experience = Job_Experience;

            this.EMail_Address = EMail_Address;
            this.Father_Name = Father_Name;
            this.Father_Occupation = Father_Occupation;
            this.Mother_Name = Mother_Name;
            this.Mother_Occupation = Mother_Occupation;
            this.Marital_Status = Marital_Status;
            this.Child_dtl = Child_dtl;
            this.Religion = Religion;
            this.Blood_Group = Blood_Group;
            this.Date_Birth = Date_Birth;
            this.PictureLocation = PictureLocation;
            this.Confirmation = Confirmation;
            this.Posting_Date = Posting_Date;

            this.UserID = UserID;
            this.InsertionTime = InsertionTime;
            this.UpdateUser = UpdateUser;
            this.UpdateTime = UpdateTime;

        }

    }
}
