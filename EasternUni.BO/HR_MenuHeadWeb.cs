using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EasternUni.BO
{
   public class HR_MenuHeadWeb
    {
        public int HR_MenuHeadWebID { get; set; }
        public string HR_MenuHeadWebName { get; set; }
        public int Priority { get; set; }
        public string DivID { get; set; }

        public HR_MenuHeadWeb()
        { }

        public HR_MenuHeadWeb(int HR_MenuHeadWebID, string HR_MenuHeadWebName, int Priority)
        {
            this.HR_MenuHeadWebID = HR_MenuHeadWebID;
            this.HR_MenuHeadWebName = HR_MenuHeadWebName;
            this.Priority = Priority;
        }

        public override string ToString()
        {
            return "HR_MenuHeadWebID = " + HR_MenuHeadWebID.ToString() + ",HR_MenuHeadWebName = " + HR_MenuHeadWebName + ",Priority = " + Priority.ToString();
        }
    }
}
