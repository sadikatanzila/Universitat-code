using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EasternUni.BO
{
     [Serializable()]
    public class Clubs_Coordinators
    {
         public int ClubsID { get; set; }
         public int CoordinatosID { get; set; }

         public string ClubName { get; set; }
         public string Name { get; set; }
         public string Designation { get; set; }
         public string Phone { get; set; }
         public string Email { get; set; }


        public int UserID { get; set; }
        public DateTime InsertionTime { get; set; }
        public int UpdateUser { get; set; }
        public DateTime UpdateTime { get; set; }



           public Clubs_Coordinators()
        { }

           public Clubs_Coordinators(string ClubName ,
            int ClubsID, string Name, string Designation, string Phone,
            string Email, string links,  int CoordinatosID,
             int UserID, DateTime InsertionTime, int UpdateUser, DateTime UpdateTime)
        {

            
            this.ClubsID = ClubsID;
            this.CoordinatosID = CoordinatosID;
            this.ClubName = ClubName;

            this.Name = Name;
            this.Designation = Designation;
            this.Phone = Phone;
            this.Email = Email;
            
            this.UserID = UserID;
            this.InsertionTime = InsertionTime;
            this.UpdateUser = UpdateUser;
            this.UpdateTime = UpdateTime;
        }
    }
}
