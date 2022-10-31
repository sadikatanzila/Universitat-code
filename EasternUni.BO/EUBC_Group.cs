using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EasternUni.BO
{
   public class EUBC_Group
    {
       public int GroupSl { get; set; }
       public string GroupTruckingExt { get; set; }
       public string Institution { get; set; }
       public string Address { get; set; }
       public string Board { get; set; }
       public string TotalStudent { get; set; }
       public string SSC_Olevel { get; set; }
       public int Deleted { get; set; }
       public DateTime DataInsert_Time { get; set; }
        

        public EUBC_Group()
        { }

        public EUBC_Group(int GroupSl, string GroupTruckingExt, string Institution, string Address,
            string Board, string TotalStudent, string SSC_Olevel,int Deleted,DateTime DataInsert_Time)
        {

            this.GroupSl = GroupSl;
            this.GroupTruckingExt = GroupTruckingExt;
            this.Institution = Institution;
            this.Address = Address;
            this.Board = Board;
            this.TotalStudent = TotalStudent;
            this.SSC_Olevel = SSC_Olevel;
            this.Deleted = Deleted;
            this.DataInsert_Time = DataInsert_Time;
        }
    }
}
