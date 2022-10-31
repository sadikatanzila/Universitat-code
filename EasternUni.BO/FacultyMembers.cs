using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EasternUni.BO
{
    [Serializable()]
    public class FacultyMembers
    {
        public int Serial_no { get; set; }
        public int FacultyID { get; set; }
        public string Name { get; set; }
        public string Designation { get; set; }
        public string Faculty { get; set; }
        public string Priority { get; set; }
        public string Phone { get; set; }
        public string Email { get; set; }
        public string PictureLocation { get; set; }
        public string AcademicBackground { get; set; }
        public string ResearchInterest { get; set; }
        public string Publications { get; set; }
        public string DetailsLink { get; set; }
        public string TeachingExp { get; set; }
        public string AdminsPos { get; set; }


        public FacultyMembers()
        { }

        public FacultyMembers(int Serial_no, int FacultyID, string Name, string Designation, string Faculty,
            string Priority, string Phone, string Email, string PictureLocation, string AcademicBackground,
            string ResearchInterest, string Publications, string DetailsLink, string TeachingExp, string AdminsPos)
        {
            this.Serial_no = Serial_no;
            this.FacultyID = FacultyID;
            this.Name = Name;
            this.Designation = Designation;
            this.Faculty = Faculty;
            this.Priority = Priority;
            this.PictureLocation = PictureLocation;
            this.Phone = Phone;
            this.Email = Email;
            this.AcademicBackground = AcademicBackground;
            this.ResearchInterest = ResearchInterest;
            this.Publications = Publications;
            this.DetailsLink = DetailsLink;
            this.TeachingExp = TeachingExp;
            this.AdminsPos = AdminsPos;
        }
    }
}
