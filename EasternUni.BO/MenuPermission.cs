using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EasternUni.BO
{
    public class MenuPermission
    {
        public int GrantID { get; set; }
        public string UserID { get; set; }
        public int MenuHeadID { get; set; }
        public int PageID { get; set; }
        public bool CanView { get; set; }
        public int SubMenuHeadID { get; set; }
        public int BrId { get; set; }

        public MenuPermission()
        { }

        public MenuPermission(int GrantID, string UserID, int MenuHeadID, int PageID, bool CanView, int subMenuHeadID, int brId)
        {
            this.GrantID = GrantID;
            this.UserID = UserID;
            this.MenuHeadID = MenuHeadID;
            this.PageID = PageID;
            this.CanView = CanView;
            this.SubMenuHeadID = subMenuHeadID;
            this.BrId = brId;
        }

    }
}
