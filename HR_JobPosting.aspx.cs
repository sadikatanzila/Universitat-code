using Eastern_Uni.DAL;
using EasternUni.BO;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Drawing;
using System.Globalization;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Eastern_Uni
{
    public partial class HR_JobPosting : System.Web.UI.Page
    {
        HR_JobPostDAL objHR_JobPostDAL = new HR_JobPostDAL();
        HR_JobCircularDAL objHR_JobCircularDAL = new HR_JobCircularDAL();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                BindList();

                DataTable dt = new DataTable();

                DateTime currentdate = DateTime.Now;
                dt = objHR_JobCircularDAL.HR_Jobcircular_GetAllForDDL(currentdate);

                if (dt.Rows.Count > 0)
                {
                    CommonBinder.LoadDDLJob_circular(ddlCircular, currentdate);

                    CommonBinder.LoadDDLJob_Cat(ddlJobCat);
                    CommonBinder.SemisterType_LoadForDll(ddlSemester);

                    CommonBinder.LoadSubject_NULL(ddlDept);
                    CommonBinder.LoadSubject_NULL(ddlType);
                    CommonBinder.LoadSubject_NULL(ddlSubject);

                    lblSubject.Visible = false;
                    ddlSubject.Visible = false;
                    lblcolon.Visible = false;
                    lblmsg.Visible = false;
                }
                else
                {
                    pnlCircularCreate.Visible = false;
                    lblCircularID.Text = "No Job Circular at this moment, to publish a new job posting first Create your Job Circular";
                }

            }
            else
            {

            }

        }


        private void Clear()
        {
            ddlJobCat.SelectedIndex = 0;
            ddlCircular.SelectedIndex = 0;

           
            CommonBinder.LoadSubject_NULL(ddlDept);
            CommonBinder.LoadSubject_NULL(ddlType);
            CommonBinder.LoadSubject_NULL(ddlSubject);
            CommonBinder.SemisterType_LoadForDll(ddlSemester);

            txtVaceny.Text = "";
            txtDescription.Text = "";
            txtNature.Text = "";
            txtEducational.Text = "";
            txtExperience.Text = "";
            txtAdditionalReq.Text = "";
            txtLocation.Text = "";
            txtSalaryRan.Text = "";
            txtfrmDate.Text = "";
            txttoDate.Text = "";
            txtYear.Text = "";
            btnSubmit.Text = "Save";
            txtExperienceTime.Text = "";

            lblSubject.Visible = false;
            ddlSubject.Visible = false;

           
            lblcolon.Visible = false;
            lblmsg.Visible = false;
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            Clear();
        }




        private void BindList()
        {

            string current = DateTime.Now.ToString("dd/MM/yyyy");

            DateTime Current_Time = DateTime.ParseExact(current, "dd/MM/yyyy", CultureInfo.CurrentCulture);
            DataTable dt = new DataTable();
            dt = objHR_JobPostDAL.HR_JobPost_GetAllCurrent("HR_JobPost_GetAllCurrent", Current_Time);

            // List<HR_JobPost> Admisssion_StdList = objHR_JobPostDAL.HR_PrevJobCircular_GetAll();
            gvJobpost.DataSource = dt;
            gvJobpost.DataBind();

        }


        protected string replace_(string st)
        {

            //Regex rx = new Regex(" ");
            //string s1 = rx.Replace(st, "&nbsp;");
            Regex ry = new Regex("\r\n|\n|\r");
            string s2 = ry.Replace(st, "<br/>");
            return s2;


        }

        protected string replaceOposite(string st)
        {

            //Regex rx = new Regex("&nbsp;");
            //string s1 = rx.Replace(st, " ");
            Regex ry = new Regex("<br/>");
            string s2 = ry.Replace(st, "\r\n");
            return s2;


        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Convert.ToInt32(ddlCircular.SelectedValue) != 0 || txtYear.Text != "" ||
                Convert.ToInt32(ddlJobCat.SelectedValue) != 0 || Convert.ToInt32(ddlSemester.SelectedValue) != 0)
            {

                HR_JobPost entity = new HR_JobPost();

                entity.JobCircular_ID = Convert.ToInt32(ddlCircular.SelectedValue);

                entity.JobType_Id = Convert.ToInt32(ddlType.SelectedValue);
                entity.SubjectID = Convert.ToInt32(ddlSubject.SelectedValue);



                //newly joint***********************
                entity.Year = Convert.ToInt32(txtYear.Text);
                entity.SemisterID = Convert.ToInt32(ddlSemester.SelectedValue);
//***********************************




                entity.Value = txtVaceny.Text;


                entity.Responsibility = replace_(txtDescription.Text);
                entity.Nature = replace_(txtNature.Text);
                entity.Educational_Req = replace_(txtEducational.Text);
                entity.JobTime_Experience = txtExperienceTime.Text;
                entity.Working_Experience = replace_(txtExperience.Text);
                entity.Additional_Req = replace_(txtAdditionalReq.Text);



                entity.Job_Location = txtLocation.Text;
                entity.Salary_Range = txtSalaryRan.Text;

                entity.Start_Date = DateTime.ParseExact(txtfrmDate.Text, "dd/MM/yyyy", CultureInfo.CurrentCulture);
                entity.Deadline = DateTime.ParseExact(txttoDate.Text, "dd/MM/yyyy", CultureInfo.CurrentCulture);

                if (chkDeactive.Checked != true)
                {
                    entity.IsActive = true;
                }
                else
                {
                    entity.IsActive = false;
                }

                Int32 Id = 0;
                if (btnSubmit.Text == "Save")
                {

                    entity.CreateDate = Convert.ToDateTime(DateTime.Now);
                    entity.CreatedBy = Convert.ToInt32(Session["HR_UserID"]);

                    Id = objHR_JobPostDAL.HR_JobPost_Add(entity);



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
                    entity.UpdateDate = Convert.ToDateTime(DateTime.Now);
                    entity.UpdatedBy = Convert.ToInt32(Session["HR_UserID"]);

                    entity.JobPost_ID = Convert.ToInt32(txtJobpost_ID.Text);

                    Id = objHR_JobPostDAL.HR_JobPost_Update(entity);

                    lblMessage.Text = "Data is Updated Successfully";
                    lblMessage.ForeColor = Color.Green;
                    Clear();
                    BindList();
                    btnSubmit.Text = "Submit";

                    Response.Redirect("HR_JobPosting.aspx");
                }

            }
            else
            {
                lblMessage.Text = "Mendatory data field(s) is/are not inserted all, please check";
                lblMessage.ForeColor = Color.Red;
            }


        }

        protected void gvJobpost_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvJobpost.PageIndex = e.NewPageIndex;
            BindList();
        }

        protected void gvJobpost_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Int32 SerialNo = Convert.ToInt32(gvJobpost.DataKeys[e.RowIndex].Value);


            int success = objHR_JobPostDAL.HR_JobPost_Delete(SerialNo);
            if (success > 0)
            {
                Clear();
                lblMessage.Text = "Data is being Deleted";
                Response.Redirect("HR_JobPosting.aspx");
                BindList();
            }
        }

        protected void gvJobpost_RowEditing(object sender, GridViewEditEventArgs e)
        {
            lblMessage.Text = string.Empty;
            e.Cancel = true;


            HR_JobPost entity = new HR_JobPost();
            Int32 SerialNo = Convert.ToInt32(gvJobpost.DataKeys[e.NewEditIndex].Value);

            entity = objHR_JobPostDAL.HR_JobPost_GetBySl(SerialNo);

            ddlCircular.SelectedValue = entity.JobCircular_ID.ToString();

            txtJobpost_ID.Text = Convert.ToString(entity.JobPost_ID);

            ddlJobCat.SelectedValue = entity.JobCat_Id.ToString();

            ddlJobCat_SelectedIndexChanged(sender, e);
            ddlDept.SelectedValue = entity.DepartmentID.ToString();

            ddlDept_SelectedIndexChanged(sender, e);
            ddlType.SelectedValue = entity.JobType_Id.ToString();
            ddlSubject.SelectedValue = entity.SubjectID.ToString();


            txtVaceny.Text = entity.Value;



            if (entity.Responsibility != null)
                txtDescription.Text = replaceOposite(entity.Responsibility);
            else
                txtDescription.Text = "";

            if (entity.Nature != null)
                txtNature.Text = replaceOposite(entity.Nature);
            else
                txtNature.Text = "";


            if (entity.Educational_Req != null)
                txtEducational.Text = replaceOposite(entity.Educational_Req);
            else
                txtEducational.Text = "";


            if (entity.Working_Experience != null)
                txtExperience.Text = replaceOposite(entity.Working_Experience);
            else
                txtExperience.Text = "";

            if (entity.Additional_Req != null)
                txtAdditionalReq.Text = replaceOposite(entity.Additional_Req);
            else
                txtAdditionalReq.Text = "";

            txtExperienceTime.Text = entity.JobTime_Experience;


            /*
            txtDescription.Text = replaceOposite(entity.Responsibility);
            txtNature.Text = replaceOposite(entity.Nature);
            txtEducational.Text = replaceOposite(entity.Educational_Req);
            txtExperience.Text = replaceOposite(entity.Working_Experience);
            
            txtAdditionalReq.Text = replaceOposite(entity.Additional_Req);
            */

            txtLocation.Text = entity.Job_Location;
            txtSalaryRan.Text = entity.Salary_Range;

            txtfrmDate.Text = entity.Start_Date.ToString("dd/MM/yyyy");
            txttoDate.Text = entity.Deadline.ToString("dd/MM/yyyy");


            //****************
            txtYear.Text = Convert.ToString(entity.Year);
            ddlSemester.SelectedValue = entity.SemisterID.ToString();
            //*****************

            if (entity.IsActive != true )
            {
                chkDeactive.Checked = true;
            }
            else
            {
                chkDeactive.Checked = false;
            }
          
           // GetSelectedData(e);
            btnSubmit.Text = "Update";
        }


   //     private void GetSelectedData(System.Web.UI.WebControls.GridViewEditEventArgs e)
  //      {
           


  //      }


        int j = 1;
        protected void gvPages_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Label lblSerial = (Label)e.Row.FindControl("lblSerial");
                lblSerial.Text = j.ToString();
                j++;
                //when mouse is over the row, save original color to new attribute, and change it to highlight yellow color
                e.Row.Attributes.Add("onmouseover", "this.originalstyle=this.style.backgroundColor;this.style.backgroundColor='#EEFFAA'");
                //when mouse leaves the row, change the bg color to its original value   
                e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=this.originalstyle;");
            }
        }

        protected void ddlJobCat_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Convert.ToString(ddlJobCat.SelectedValue) != "-- Please Select --")
            {
                if (Convert.ToInt32(ddlJobCat.SelectedValue) == 2)
                {
                    lblSubject.Visible = true;
                    ddlSubject.Visible = true;
                    lblcolon.Visible = true;
                    lblmsg.Visible = true;
                }
                else
                {
                    lblSubject.Visible = false;
                    ddlSubject.Visible = false;
                    lblcolon.Visible = false;
                    lblmsg.Visible = false;
                }
                CommonBinder.LoadDept_byCategory(ddlDept, Convert.ToInt32(ddlJobCat.SelectedValue));
            }
            else
            {
                CommonBinder.LoadSubject_NULL(ddlType);
            }
        }

     

        protected void ddlDept_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Convert.ToString(ddlType.SelectedValue) != "-- Please Select --")
            {
                CommonBinder.LoadPosition_byDept(ddlType, Convert.ToInt32(ddlDept.SelectedValue));

                if (Convert.ToInt32(ddlJobCat.SelectedValue) == 2)
                {
                    lblSubject.Visible = true;
                    ddlSubject.Visible = true;
                    lblcolon.Visible = true;
                    lblmsg.Visible = true;
                    CommonBinder.LoadSubject_byDept(ddlSubject, Convert.ToInt32(ddlDept.SelectedValue));
                }
                else
                {
                    lblSubject.Visible = false;
                    ddlSubject.Visible = false;
                    lblcolon.Visible = false;
                    lblmsg.Visible = false;
                }

                
               
            }
            else
            {
              //  CommonBinder.LoadSubject_NULL(ddlDept);
                CommonBinder.LoadSubject_NULL(ddlType);
                CommonBinder.LoadSubject_NULL(ddlSubject);
            }
        }

        protected void ddlCircular_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}