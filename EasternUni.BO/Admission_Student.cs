using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EasternUni.BO
{
    [Serializable()]

    public class Admission_Student
    {
        public int SerialNo { get; set; }
        public int StudentID { get; set; }
        public string Name { get; set; }
        public string Address { get; set; }
        public int FacultyID { get; set; }
        public int DepartmentID { get; set; }
        public int SemisterID { get; set; }
        public string Faculty { get; set; }
        public string Department { get; set; }
        public string Semister { get; set; }
        public string AdmissionDate { get; set; }
        public string AdmissionMonth { get; set; }
        public string AdmissionYear { get; set; }
        public string Student_Result { get; set; }
        public int Result { get; set; }


        public Admission_Student()
        { }

        public Admission_Student(int SerialNo, int StudentID, string Name, string Address, string Faculty, string Department, string Semister,
            int FacultyID, int DepartmentID, int SemisterID, string AdmissionDate, string AdmissionMonth, string AdmissionYear)
        {
            this.SerialNo = SerialNo;
            this.StudentID = StudentID;
            this.Name = Name;
            this.Address = Address;
            this.FacultyID = FacultyID;
            this.DepartmentID = DepartmentID;
            this.SemisterID = SemisterID;
            this.Faculty = Faculty;
            this.Department= Department;
            this.Semister = Semister;
            this.AdmissionDate = AdmissionDate;
            this.AdmissionMonth = AdmissionMonth;
            this.AdmissionYear = AdmissionYear;
        }
    }
}
