using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EasternUni.BO
{
    public class Faculty_Designation
    {
        public int DesignationID { get; set; }
        public string Designation { get; set; }
        public string Priority { get; set; }


         public Faculty_Designation()
          { }

         public Faculty_Designation(int DesignationID, string Designation, string Priority)
            {
                this.DesignationID = DesignationID;
                this.Designation = Designation;
                this.Priority = Priority;
               
           
            }
    }
}
