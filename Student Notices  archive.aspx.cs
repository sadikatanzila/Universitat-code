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
    public partial class Student_Notices__archive : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.ViewState["vs"] = 0;
            }
            BindListNoticeBoard();
            gvNoticeBoard.Visible = true;
            btnView.Visible = true;
        }

        private void BindListNoticeBoard()
        {
            DataTable dt = new DataTable();
            dt = Department_GetAllbyDesg("Student_NoticeBoard");
            gvNoticeBoard.DataSource = dt;
            gvNoticeBoard.DataBind();
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

      

        protected void gvNoticeBoard_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvNoticeBoard.PageIndex = e.NewPageIndex;
            BindListNoticeBoard();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtDtl.Text == "" && txtHeading.Text == "")
                {
                    errorMsg.Text = "You have not give any data";
                    gvNoticeBoard.Visible = false;
                }
                else
                {
                    BindNoticeList();
                    gvNoticeBoard.Visible = true;
                    btnView.Visible = false;
                }

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private void BindNoticeList()
        {
            UserDAL objUserDAL = new UserDAL();
            DataTable dt = new DataTable();

            string Heading = replace_(Convert.ToString(txtHeading.Text));
            string Detail = replace_(Convert.ToString(txtDtl.Text));

            dt = objUserDAL.Notice_Search("Notice_Search", Heading, Detail);
            gvNoticeBoard.DataSource = dt;
            gvNoticeBoard.DataBind();
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

       

        protected void btnView_Click(object sender, EventArgs e)
        {
            pnlSearch.Visible = true;
            btnView.Visible = false;
        }

    }
}