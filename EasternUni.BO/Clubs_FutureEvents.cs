using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EasternUni.BO
{
    [Serializable()]
  public  class Clubs_FutureEvents
    {
        public int EventsID { get; set; }
        public int ClubsID { get; set; }
        public string Name { get; set; }
        public string Headline { get; set; }
        public string Details { get; set; }
        public string PictureLocation { get; set; }
        public string Mail { get; set; }
        public DateTime FromDate { get; set; }
        public DateTime ToDate { get; set; }

        public string Remarks { get; set; }
        public string Time { get; set; }
        public string Venue { get; set; }

         public Clubs_FutureEvents()
        { }

         public Clubs_FutureEvents
             (int EventsID, int ClubsID, string Name, string Headline, string Details, string Remarks,string Venue,
             string PictureLocation, string Mail, DateTime FromDate, DateTime ToDate, string Time)
         {
             this.EventsID = EventsID;
             this.ClubsID = ClubsID;
             this.Name = Name;
             this.Headline = Headline;
             this.Details = Details;
             this.PictureLocation = PictureLocation;
             this.Mail = Mail;
             this.FromDate = FromDate;
             this.ToDate = ToDate;
             this.Remarks = Remarks;
             this.Time = Time;
             this.Venue = Venue;
         }
        
    }
}
