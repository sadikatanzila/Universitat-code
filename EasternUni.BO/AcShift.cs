using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EasternUni.BO
{
    [Serializable()]
    public class AcShift
    {
        public int ShiftID { get; set; }
        public string Shift { get; set; }
        public string Priority { get; set; }


         public AcShift()
          { }

         public AcShift(int ShiftID, string Shift, string Priority)
            {
                this.ShiftID = ShiftID;
                this.Shift = Shift;
                this.Priority = Priority;
               
           
            }
    }
}
