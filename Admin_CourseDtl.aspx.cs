using Eastern_Uni.DAL;
using EasternUni.BO;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Globalization;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Eastern_Uni
{
    public partial class Admin_CourseDtl : System.Web.UI.Page
    {
        CourseDAL objCourseDAL = new CourseDAL();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                CommonBinder.FacultyType_LoadForCourses(ddlFaculty);
                CommonBinder.LoadSubject_NULL(ddlSubject);

                CommonBinder.Year_LoadForDll(ddlYear);
                CommonBinder.Semister_LoadForDll(ddlSemister);

                BindList();
            }
            else
            {

            }
        }

        private void BindList()
        {
            List<Course> AlumniList = objCourseDAL.Course_GetAll();
            grdCourse.DataSource = AlumniList;
            grdCourse.DataBind();
        }


        int i = 1;
        protected void grdCourse_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Label lblSerial = (Label)e.Row.FindControl("lblSerial");
                lblSerial.Text = i.ToString();
                i++;
                //when mouse is over the row, save original color to new attribute, and change it to highlight yellow color
                e.Row.Attributes.Add("onmouseover", "this.originalstyle=this.style.backgroundColor;this.style.backgroundColor='#EEFFAA'");
                //when mouse leaves the row, change the bg color to its original value   
                e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=this.originalstyle;");
            }
        }
        protected string replace_(string st)
        {

            // Regex rx = new Regex(" ");
            // string s1 = rx.Replace(st, "&nbsp;");
            Regex ry = new Regex("\r\n|\n|\r");
            string s2 = ry.Replace(st, "<br/>");
            return s2;


        }

        protected string replaceOposite(string st)
        {

            // Regex rx = new Regex("&nbsp;");
            // string s1 = rx.Replace(st, " ");
            Regex ry = new Regex("<br/>");
            string s2 = ry.Replace(st, "\r\n");
            return s2;


        }
        protected void Submit_Click(object sender, EventArgs e)
        {
            if (txtCourseCode.Text == "" || txtCourseTitle.Text == "" || txtCourseDtl.Text == "" || txtCourseCredit.Text == "" || Convert.ToInt32(ddlFaculty.SelectedValue) == 0 || Convert.ToInt32(ddlSubject.SelectedValue) == 0)
            {
                lblMessage.Text = "Please fill-up the necessary box's information";
                return;
            }
            else
            {
                Save();
            }
        }


        private void Save()
        {
            Course entity = new Course();

            entity.FacultyID = Convert.ToInt32(ddlFaculty.SelectedValue);
            entity.SubjectID = Convert.ToInt32(ddlSubject.SelectedValue);
            entity.Course_Type = txtTypes.Text;
            entity.Course_Group = txtGroup.Text;
            entity.Course_Code = txtCourseCode.Text;
            entity.Course_Title = txtCourseTitle.Text;
            entity.Course_Detail = replace_(txtCourseDtl.Text);
            entity.Credit = txtCourseCredit.Text;
            if (txtPrerequisite.Text != "")
            {
                entity.Prerequisite = txtPrerequisite.Text;
            }
            else
            {
                entity.Prerequisite = "None";
            }
            entity.YearID = Convert.ToInt32(ddlYear.SelectedValue);
            entity.SemisterID = Convert.ToInt32(ddlSemister.SelectedValue);

            Int32 Id = 0;


            if (Submit.Text == "Save")
            {
                entity.InsertionTime = DateTime.Now;
                entity.UserID = Convert.ToInt32(Session["userID"]);

                Id = objCourseDAL.Add_Course(entity);



                if (Id > 0)
                {
                    lblMessage.Text = "Data is Inserted Successfully";
                    lblMessage.ForeColor = Color.Green;
                    Clear();
                    BindList();
                }
            }
            else
            {
                entity.UpdateTime = DateTime.Now;
                entity.UpdateUser = Convert.ToInt32(Session["userID"]);

                entity.CourseID = Convert.ToInt32(txtCourseID.Text);
                Id = objCourseDAL.Update_Course(entity);

                lblMessage.Text = "Data is Updated Successfully";
                lblMessage.ForeColor = Color.Green;
                Clear();
                BindList();
                Submit.Text = "Save";

                Response.Redirect("Admin_CourseDtl.aspx");
            }

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            Clear();
        }

        private void Clear()
        {
            txtCourseID.Text ="";
            txtTypes.Text = "";
            txtGroup.Text = "";
            txtCourseCode.Text = "";

            txtCourseTitle.Text = "";
            txtCourseDtl.Text = "";
            txtCourseCredit.Text = "";
            txtPrerequisite.Text = "";

            ddlFaculty.SelectedIndex = 0;
            CommonBinder.LoadSubject_NULL(ddlSubject);
            ddlYear.SelectedIndex = 0;
            ddlSemister.SelectedIndex = 0;
        }

        protected void grdCourse_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Int32 CourseID = Convert.ToInt32(grdCourse.DataKeys[e.RowIndex].Value);


            int success = objCourseDAL.Course_Delete(CourseID);
            if (success > 0)
            {
                // Clear();
                lblMessage.Text = "Data is being Deleted";
                Response.Redirect("Admin_CourseDtl.aspx");
                BindList();
            }
        }

        protected void grdCourse_RowEditing(object sender, GridViewEditEventArgs e)
        {
            lblMessage.Text = string.Empty;
            e.Cancel = true;

            GetSelectedData(sender, e);
            Submit.Text = "Update";
        }

        private void GetSelectedData(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            Course entity = new Course();
            Int32 CourseID = Convert.ToInt32(grdCourse.DataKeys[e.NewEditIndex].Value);
            entity = objCourseDAL.Get_CourseInfoID(CourseID);


            ddlFaculty.SelectedValue = Convert.ToString(entity.FacultyID);

            if (entity.FacultyID > 0)
            {
                ddlFaculty_SelectedIndexChanged(sender, e);
                ddlSubject.SelectedValue = Convert.ToString(entity.SubjectID);
            }
            txtCourseID.Text = Convert.ToString(entity.CourseID);
            txtTypes.Text = Convert.ToString(entity.Course_Type);
            txtGroup.Text = Convert.ToString(entity.Course_Group);
            txtCourseCode.Text = Convert.ToString(entity.Course_Code);

            txtCourseTitle.Text = entity.Course_Title;
            txtCourseDtl.Text = replaceOposite(entity.Course_Detail);
            txtCourseCredit.Text = entity.Credit;
            txtPrerequisite.Text = entity.Prerequisite;



            if (entity.YearID > 0)
            {
                ddlYear.SelectedValue = entity.YearID.ToString();

            }

            if (entity.SemisterID > 0)
            {
                ddlSemister.SelectedValue = entity.SemisterID.ToString();

            }
            
           
        }


        protected void ddlFaculty_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlFaculty.SelectedIndex > 0)
            {
                //  undergraduateid=2;
                CommonBinder.LoadSubjectByFaculty(ddlSubject, Int32.Parse(ddlFaculty.SelectedValue));
                ddlSubject.Focus();
            }
        }

        protected void grdCourse_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdCourse.PageIndex = e.NewPageIndex;
            BindList();
        }
    }
}