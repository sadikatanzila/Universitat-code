using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EasternUni.BO
{
    public class MenuPageWeb
    {
        public int  PageId { get; set; }
        public int SubMenuHeadID { get; set; }
		public int  MenuHeadID { get; set; }
        public string MenuHeadName { get; set; }
		public string  PageName { get; set; }
		public string  URL { get; set; }
        public int CreateBy { get; set; }
		public DateTime?  CreateDate { get; set; }
        public int UpdateBy { get; set; }
		public DateTime?  LastUpdateDate { get; set; }
		public bool  IsRemoved { get; set; }
        public string PageTitle { get; set; }
        public string LiID { get; set; }

		public MenuPageWeb()
		{ }

        public MenuPageWeb(int PageId, int MenuHeadID,int SubMenuHeadID, string PageName, string MenuHeadName,string URL,
            Nullable<DateTime> CreateDate, Nullable<DateTime> LastUpdateDate, bool IsRemoved, string PageTitle,
            int CreateBy, int UpdateBy, string LiID)
		{
			this.PageId = PageId;
            this.SubMenuHeadID = SubMenuHeadID;
			this.MenuHeadID = MenuHeadID;
            this.MenuHeadName = MenuHeadName;
			this.PageName = PageName;
			this.URL = URL;
            this.CreateBy = CreateBy;
			this.CreateDate = CreateDate;
            this.UpdateBy = UpdateBy;
			this.LastUpdateDate = LastUpdateDate;
			this.IsRemoved = IsRemoved;
            this.PageTitle = PageTitle;
            this.LiID = LiID;
		}

		
    }
}
