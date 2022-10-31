using EasternUni.BO;
//using SmartSoft.QueryStringEncryption;
using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace Eastern_Uni
{
    public partial class AboutEU_Profile : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.ViewState["vs"] = 0;
            }
           // pos_e = (int)this.ViewState["vs"];

            //result.Visible = false;
        }

       
    }
}
