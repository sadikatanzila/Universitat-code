using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EasternUni.BO
{
     [Serializable()]
    public  class Course
    {
        public int Sl { get; set; }
        public int CourseID { get; set; }
        public int FacultyID { get; set; }
        public string Faculty { get; set; }
        public int SubjectID { get; set; }
        public string Subject { get; set; }
        public string Course_Type { get; set; }
        public string Course_Group { get; set; }

        public int YearID { get; set; }
        public string Year { get; set; }
        public int SemisterID { get; set; }
        public string Semister { get; set; }
        public string Course_Code { get; set; }
        public string Course_Title { get; set; }
        public string Course_Detail { get; set; }
        public string Credit { get; set; }
        public string Prerequisite { get; set; }

        public int UserID { get; set; }
        public DateTime InsertionTime { get; set; }
        public int UpdateUser { get; set; }
        public DateTime UpdateTime { get; set; }

        public Course()
        { }

        public Course(int Sl, int CourseID, int FacultyID, string Faculty, int SubjectID,
            string Subject, string Course_Type, string Course_Group, int YearID, string Year,
            int SemisterID, string Semister, string Course_Code, string Course_Title,
            string Course_Detail, string Credit, string Prerequisite,
             int UserID, DateTime InsertionTime, int UpdateUser, DateTime UpdateTime)
        {

            this.Sl = Sl;
            this.CourseID = CourseID;
            this.FacultyID = FacultyID;
            this.Faculty = Faculty;

            this.SubjectID = SubjectID;
            this.Subject = Subject;
            this.Course_Type = Course_Type;
            this.Course_Group = Course_Group;
            this.YearID = YearID;
            this.Year = Year;
            this.SemisterID = SemisterID;
            this.Semister = Semister;
            this.Course_Code = Course_Code;
            this.Course_Title = Course_Title;
            this.Course_Detail = Course_Detail;
            this.Credit = Credit;
            this.Prerequisite = Prerequisite;
            
            this.UserID = UserID;
            this.InsertionTime = InsertionTime;
            this.UpdateUser = UpdateUser;
            this.UpdateTime = UpdateTime;
        }
    }
}
