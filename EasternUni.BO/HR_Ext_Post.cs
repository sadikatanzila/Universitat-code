using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EasternUni.BO
{
  public  class HR_Ext_Post
    {
        public int ExtPost_Sl { get; set; }
        public string TrackingNo { get; set; }
        public int JobPost_ID { get; set; }

        public HR_Ext_Post()
        { }

        public HR_Ext_Post(
               
                int ExtPost_Sl ,
           int JobPost_ID,
           string TrackingNo )
           {
                this.ExtPost_Sl 	=	ExtPost_Sl ;
            this.TrackingNo	=	TrackingNo ;
            this.JobPost_ID = JobPost_ID;
           }
    }
}
