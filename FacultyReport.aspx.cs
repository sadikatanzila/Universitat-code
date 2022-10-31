using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Eastern_Uni.DAL;

namespace Eastern_Uni
{
    public partial class FacultyReport : System.Web.UI.Page
    {
        SqlDataAdapter dadapter_e;
        DataSet dset_e;
        PagedDataSource adsource_e;
        string connstring_e = "database=Eastern_University;server=localhost\\sqlexpress;user=sa;password=1086042g6";

        int pos_e;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                this.ViewState["vs"] = 0;
            }
            pos_e = (int)this.ViewState["vs"];

            result.Visible = false;

            Session["FacultyID"] = Session["PrevFacultyID"];
            Session["FacultyMemberReport"] = 1;

            string webUrl = "../Reports/ReportViewer.aspx";

            ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "window.open('" + webUrl + "','_blank','width=1550,height=650,resizable=yes,scrollbars = yes');", true);

            string webUrl1 = "../FacultyReport.aspx";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Close", "window.open('" + webUrl1 + "','_blank','width=1550,height=650,resizable=yes,scrollbars = yes');", true);

            //this.ClientScript.RegisterClientScriptBlock(this.GetType(), "Close", "window.close()", true);
        }

       

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["FacultyID"] = Convert.ToInt32(txtName.Text);
            Session["FacultyMemberReport"] = 1;

            string webUrl = "../Reports/ReportViewer.aspx";

            ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "window.open('" + webUrl + "','_blank','width=1550,height=650,resizable=yes,scrollbars = yes');", true);
        }
    }
}