using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EasternUni.BO
{
    [Serializable()]
    public class Clubs_Executives
    {
         public int ClubsID { get; set; }
         public int ExecutiveID { get; set; }

         public string ClubName { get; set; }
         public string Name { get; set; }
         public string Post { get; set; }
         public string ID { get; set; }


        public int UserID { get; set; }
        public DateTime InsertionTime { get; set; }
        public int UpdateUser { get; set; }
        public DateTime UpdateTime { get; set; }



           public Clubs_Executives()
        { }

           public Clubs_Executives(string ClubName,
            int ClubsID, string Name, string Post, string ID,
             int ExecutiveID, int UserID, DateTime InsertionTime,
               int UpdateUser, DateTime UpdateTime)
        {

            
            this.ClubsID = ClubsID;
            this.ExecutiveID = ExecutiveID;
            this.ClubName = ClubName;

            this.Name = Name;
            this.Post = Post;
            this.ID = ID;
            
            this.UserID = UserID;
            this.InsertionTime = InsertionTime;
            this.UpdateUser = UpdateUser;
            this.UpdateTime = UpdateTime;
        }
    }
}
