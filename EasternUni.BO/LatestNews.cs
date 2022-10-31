using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EasternUni.BO
{
   public class LatestNews
    {
       public int id { get; set; }
       public string headlines { get; set; }
       public string date { get; set; }
       public string brief { get; set; }
       public string PicureLocation { get; set; }
       public string Ref { get; set; }
       public string Posting_date { get; set; }
       public string details { get; set; }

        public DateTime InsertionTime { get; set; }
        public DateTime UpdateTime { get; set; }
        public int UserID { get; set; }
        public int UpdateUser { get; set; }
        public string Publisher { get; set; }
        public string Visible { get; set; }


        public DateTime FromDate { get; set; }
        public DateTime ToDate { get; set; }
        public string TailorDtls { get; set; }

         public LatestNews()
        { }

         public LatestNews(int id,string headlines,string date,string brief,string PicureLocation,
             string Ref,string Posting_date,string details,int UserID,
            int UpdateUser, DateTime InsertionTime, DateTime UpdateTime, string Publisher, string Visible
             , DateTime FromDate, DateTime ToDate, string TailorDtls
            )
        {
            this.id = id;
            this.headlines = headlines;
            this.date = date;
            this.brief = brief;
            this.PicureLocation = PicureLocation;
            this.Ref = Ref;
            this.Posting_date = Posting_date;
            this.details = details;
            this.Publisher = Publisher;

            this.InsertionTime = InsertionTime;
            this.UpdateTime = UpdateTime;
            this.UserID = UserID;
            this.UpdateUser = UpdateUser;
            this.Visible = Visible;

            this.FromDate = FromDate;
            this.ToDate = ToDate;
            this.TailorDtls = TailorDtls;
        }

         
    }
}
