using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EasternUni.BO
{
 public class AcSubject
    {
        public int SubjectID { get; set; }
        public int FacultyID { get; set; }
        public string Faculty { get; set; }        
        public int AcaProgID { get; set; }
        public string Program { get; set; }
        public string Subject { get; set; }
        public string Priority { get; set; }

        public AcSubject()
        { }

        public AcSubject(int SubjectID,int FacultyID, string Faculty,int AcaProgID, string Program,string Subject,string Priority)
            {
                this.SubjectID = SubjectID;
                this.Subject = Subject;
                this.FacultyID = FacultyID;
                this.Faculty = Faculty;
                this.AcaProgID = AcaProgID;
                this.Program = Program;
                this.Priority = Priority;
               
           
            }
    }
}
