using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EasternUni.BO
{
    [Serializable()]
  public class Clubs
    {
        public int ClubsID { get; set; }
        public string Name { get; set; }
        public string Details { get; set; }
        public string Objectives { get; set; }
        public string Activities { get; set; }
        public string links { get; set; }

        public int UserID { get; set; }
        public DateTime InsertionTime { get; set; }
        public int UpdateUser { get; set; }
        public DateTime UpdateTime { get; set; }




          public Clubs()
        { }

        public Clubs(
            int ClubsID, string Name, string Details, string Objectives,
            string Activities, string links, 
             int UserID, DateTime InsertionTime, int UpdateUser, DateTime UpdateTime)
        {

            
            this.ClubsID = ClubsID;
            this.Name = Name;
            this.Details = Details;
            this.Objectives = Objectives;
            this.Activities = Activities;
            this.links = links;
            
            this.UserID = UserID;
            this.InsertionTime = InsertionTime;
            this.UpdateUser = UpdateUser;
            this.UpdateTime = UpdateTime;
        }
    }
}
    
