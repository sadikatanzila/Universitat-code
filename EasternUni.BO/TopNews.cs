using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EasternUni.BO
{
     [Serializable()]
   public class TopNews
    {
        public int Serial_no { get; set; }
        public string headline { get; set; }
        public string detail { get; set; }

        public DateTime InsertionTime { get; set; }
        public DateTime UpdateTime { get; set; }
        public int UserID { get; set; }
        public int UpdateUser { get; set; }


        public TopNews()
        { }

        public TopNews(int Serial_no, string headline, string detail, int UserID,
            int UpdateUser, DateTime InsertionTime, DateTime UpdateTime
            )
        {
            this.Serial_no = Serial_no;
            this.headline = headline;
            this.detail = detail;

            this.InsertionTime = InsertionTime;
            this.UpdateTime = UpdateTime;
            this.UserID = UserID;
            this.UpdateUser = UpdateUser;

        }
    }
}
