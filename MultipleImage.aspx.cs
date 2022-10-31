using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.IO;
using CrystalDecisions.CrystalReports.Engine;

using System.Linq;
using System.Web.UI;
using System.Xml.Linq;
using CrystalDecisions.CrystalReports.Engine; 

namespace Eastern_Uni
{
    public partial class MultipleImage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void btnUpload_Click1(object sender, EventArgs e)
        {
            try
            {
                //To Upload Multiple Files on Single Click
                HttpFileCollection hfc = Request.Files;
                for (int i = 0; i < hfc.Count; i++)
                {
                    HttpPostedFile hpf = hfc[i];
                    if (hpf.ContentLength > 0)
                    {
                        hpf.SaveAs(Server.MapPath("MyFiles") + "\\" + Path.GetFileName(hpf.FileName));
                    }
                }
            }
            catch (Exception ex)
            {
            }

        }
    }
}