using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EasternUni.BO
{
    [Serializable()]
    public class news_events_VC
    {
        public int serial_no { get; set; }
        public int date { get; set; }
        public string month { get; set; }
        public int year { get; set; }
        public string headline { get; set; }
        public string brief { get; set; }
        public string PictureLocation { get; set; }
        public string Ref { get; set; }
        public string Posting_date { get; set; }
        public string details { get; set; }

        public DateTime InsertionTime { get; set; }
        public DateTime UpdateTime { get; set; }
        public int UserID { get; set; }
        public int UpdateUser { get; set; }
        public string HeaderImage { get; set; }


        public DateTime LastView_Date { get; set; }
        public int Priority { get; set; }

        public news_events_VC()
        { }

        public news_events_VC(int serial_no, int date, string month, int year, string headline, string brief,
            string PictureLocation, string Ref, string Posting_date, string details, int UserID,
            int UpdateUser, DateTime InsertionTime, DateTime UpdateTime, string HeaderImage, int Priority, DateTime LastView_Date
            )
        {
            this.serial_no = serial_no;
            this.date = date;
            this.month = month;
            this.year = year;
            this.headline = headline;
            this.brief = brief;
            this.PictureLocation = PictureLocation;
            this.HeaderImage = HeaderImage;
            this.Ref = Ref;
            this.Posting_date = Posting_date;
            this.details = details;

            this.InsertionTime = InsertionTime;
            this.UpdateTime = UpdateTime;
            this.UserID = UserID;
            this.UpdateUser = UpdateUser;


            this.Priority = Priority;
            this.LastView_Date = LastView_Date;

        }


    }
}
