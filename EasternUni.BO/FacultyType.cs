using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EasternUni.BO
{
    [Serializable()]
    public class FacultyType
    {
        public int FacultyID { get; set; }
        public string Faculty { get; set; }
        public string Priority { get; set; }


         public FacultyType()
          { }

         public FacultyType(int FacultyID, string Faculty, string Priority)
            {
                this.FacultyID = FacultyID;
                this.Faculty = Faculty;
                this.Priority = Priority;
               
           
            }
    }
}
