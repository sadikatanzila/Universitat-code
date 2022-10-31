using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EasternUni.BO
{
   public class EUBC
    {
        public int Std_Sl { get; set; }
        public string GroupTruckingExt { get; set; }
        public string Name { get; set; }
        public string GPA { get; set; }
        public string Department { get; set; }
        public string Email { get; set; }
        public string Cell { get; set; }
        public string DesignationGrp { get; set; }
        public string PicLocation { get; set; }
        public int UserID { get; set; }
        public DateTime InsertionTime { get; set; }
        public DateTime UpdateTime { get; set; }
        public int UpdateUser { get; set; }
        public DateTime DataInsert_Time { get; set; }
        public string TruckingExt { get; set; }
        public int Deleted { get; set; }       
        

        
        

        public EUBC()
        { }

        public EUBC(
        
            int Std_Sl,
        string GroupTruckingExt,
        string Name,
        string GPA,
        string Department,
        string Email,
        string Cell,
        string DesignationGrp,
        string PicLocation,
        int UserID,
        DateTime InsertionTime,
        DateTime UpdateTime,
        int UpdateUser,
        DateTime DataInsert_Time,
        string TruckingExt,
        int Deleted)
        {

            this.Std_Sl = Std_Sl;
            this.Name = Name;
            this.Email = Email;
            this.Cell = Cell;
            this.GroupTruckingExt = GroupTruckingExt;
            this.Department = Department;
            this.DesignationGrp = DesignationGrp;           
            this.GPA = GPA;
            this.PicLocation = PicLocation;
            this.Deleted = Deleted;
            this.TruckingExt = TruckingExt;
            this.DataInsert_Time = DataInsert_Time;            
            this.InsertionTime = InsertionTime;
            this.UpdateTime = UpdateTime;
            this.UserID = UserID;
            this.UpdateUser = UpdateUser;
        }
    }
}
