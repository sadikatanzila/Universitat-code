using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EasternUni.BO
{
    public class MenuHead
    {
        public int MenuHeadID { get; set; }
        public string MenuHeadName { get; set; }
        public int Priority { get; set; }
        public string DivID { get; set; }

        public MenuHead()
        { }

        public MenuHead(int MenuHeadID, string MenuHeadName, int Priority)
        {
            this.MenuHeadID = MenuHeadID;
            this.MenuHeadName = MenuHeadName;
            this.Priority = Priority;
        }

        public override string ToString()
        {
            return "MenuHeadID = " + MenuHeadID.ToString() + ",MenuHeadName = " + MenuHeadName + ",Priority = " + Priority.ToString();
        }
    }
}
