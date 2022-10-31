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
using EasternUni.BO;
using System.Text.RegularExpressions;

namespace Eastern_Uni
{
    public partial class GED_Courses : System.Web.UI.Page
    {
        CourseDAL objCourseDAL = new CourseDAL();
        SqlDataAdapter dadapter_e;
        DataSet dset_e;
        PagedDataSource adsource_e;
        string connstring_e = "database=Eastern_University;server=localhost\\sqlexpress;user=sa;password=1086042g6";

        int pos_n;

        string n, d, sql, Serial_no;


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.ViewState["vs"] = 0;
            }
            pos_n = (int)this.ViewState["vs"];
            lblHeading.Text = "Offered Courses";
            pnlCourse.Visible = false;
            gvCourses.Visible = true;
            // result.Visible = false;
            BindList();
        }

        private void BindList()
        {
            DataTable dt = new DataTable();
            dt = Department_GetAllbyDesg("CoursesCore_GED");
            gvCourses.DataSource = dt;
            gvCourses.DataBind();
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

        protected void gvCourses_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvCourses.PageIndex = e.NewPageIndex;
            BindList();


        }

        protected void gvCourses_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GetSelectedData(e);
        }

        private void GetSelectedData(System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            Course entity = new Course();
            Int32 CourseID = Convert.ToInt32(gvCourses.DataKeys[e.NewEditIndex].Value);
            entity = objCourseDAL.Get_CourseInfoID(CourseID);

            gvCourses.Visible = false;
            pnlCourse.Visible = true;

            lblHeading.Text = Convert.ToString(entity.Course_Code);
            lblOfferedby.Text = entity.Course_Group;
            lblCourseTitle.Text = entity.Course_Title;
            lblCredit.Text = entity.Credit;

            lblPrerequisite.Text = entity.Prerequisite;


            lblDetails.Text = entity.Course_Detail;
            // txtdtl.Text = replaceOposite(entity.Course_Detail);
        }

        protected string replaceOposite(string st)
        {

            // Regex rx = new Regex("&nbsp;");
            // string s1 = rx.Replace(st, " ");
            Regex ry = new Regex("<br/>");
            string s2 = ry.Replace(st, "\r\n");
            return s2;


        }
    }
}