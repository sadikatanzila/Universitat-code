using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Eastern_Uni.DAL;
using System.Text.RegularExpressions;

namespace Eastern_Uni
{
    public partial class News_and_Events_ArchivePrev : System.Web.UI.Page
    {
      
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.ViewState["vs"] = 0;
            }
            BindListNoticeBoard();
            gvNewsEvents.Visible = true;
            btnView.Visible = true;
        }

        private void BindListNoticeBoard()
        {
            DataTable dt = new DataTable();
            dt = Department_GetAllbyDesg("Student_NewsEvents");
            gvNewsEvents.DataSource = dt;
            gvNewsEvents.DataBind();
        }

        public DataTable Department_GetAllbyDesg(string storeProcedure)
        {
            DataTable table = new DataTable();
            try
            {
                // DbConnection conn_st=ge;
                DbCommand command = DbProviderHelper.CreateCommand(storeProcedure, CommandType.StoredProcedure);
                DbDataAdapter adapter = DbProviderHelper.CreateDataAdapter(command);
                adapter.Fill(table);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            finally
            {
                table.Dispose();
            }
            return table;
        }

        protected void gvNewsEvents_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvNewsEvents.PageIndex = e.NewPageIndex;
            BindListNoticeBoard();
        }

        protected void btnView_Click(object sender, EventArgs e)
        {
            pnlSearch.Visible = true;
            btnView.Visible = false;
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtDtl.Text == "" && txtHeading.Text == "")
                {
                    errorMsg.Text = "You have not give any data";
                    gvNewsEvents.Visible = false;
                }
                else
                {
                    BindNewsList();
                    gvNewsEvents.Visible = true;
                    btnView.Visible = false;
                }

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        private void BindNewsList()
        {
            UserDAL objUserDAL = new UserDAL();
            DataTable dt = new DataTable();

            string Heading = Convert.ToString(txtHeading.Text);
            string Detail = replace_(Convert.ToString(txtDtl.Text));

            dt = objUserDAL.Notice_Search("NewsEvents_Search", Heading, Detail);
            gvNewsEvents.DataSource = dt;
            gvNewsEvents.DataBind();
        }


        protected string replace_(string st)
        {

            Regex rx = new Regex(" ");
            string s1 = rx.Replace(st, "&nbsp;");
            Regex ry = new Regex("\r\n|\n|\r");
            string s2 = ry.Replace(s1, "<br/>");
            return s2;


        }
        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtHeading.Text = "";
            txtDtl.Text = "";
        }
    }
}