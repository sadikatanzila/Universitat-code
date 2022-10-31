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
    public partial class HR_AppliedPosition : System.Web.UI.Page
    {
        HR_JobTypeDAL objHR_JobTypeDAL = new HR_JobTypeDAL();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                BindList();
                CommonBinder.LoadDDLJob_Cat(ddlType);

                CommonBinder.LoadSubject_NULL(ddldept);
            }
            else
            {

            }

        }


        private void Clear()
        {
            ddlType.SelectedIndex = 0;
            CommonBinder.LoadSubject_NULL(ddldept);
            txtPosition.Text = "";
            txtPriority.Text = "";
            btnSubmit.Text = "Save";
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            Clear();
        }




        private void BindList()
        {
            List<HR_JobType> Admisssion_StdList = objHR_JobTypeDAL.HR_JobType_GetAll();
            gvJobType.DataSource = Admisssion_StdList;
            gvJobType.DataBind();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            HR_JobType entity = new HR_JobType();



            entity.DepartmentID = Convert.ToInt32(ddldept.SelectedValue);
            entity.Job_Post = txtPosition.Text;

            entity.Priority = txtPriority.Text;


            Int32 Id = 0;
            if (btnSubmit.Text == "Save")
            {

                entity.CreateDate = Convert.ToDateTime(DateTime.Now);
                entity.CreatedBy = Convert.ToInt32(Session["HR_UserID"]);

                Id = objHR_JobTypeDAL.HR_JobType_Add(entity);



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

                entity.JobType_Id = Convert.ToInt32(txtID.Text);

                Id = objHR_JobTypeDAL.HR_JobType_Update(entity);
                
                if (Id > 0)
                {
                    lblMessage.Text = "Data is Updated Successfully";
                    lblMessage.ForeColor = Color.Green;
                    Clear();
                    BindList();
                    btnSubmit.Text = "Submit";

                    Response.Redirect("HR_AppliedPosition.aspx");
                }
            }
        }

        protected void gvJobType_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvJobType.PageIndex = e.NewPageIndex;
            BindList();
        }

        protected void gvJobType_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Int32 SerialNo = Convert.ToInt32(gvJobType.DataKeys[e.RowIndex].Value);


            int success = objHR_JobTypeDAL.HR_JobType_Delete(SerialNo);
            if (success > 0)
            {
                Clear();
                lblMessage.Text = "Data is being Deleted";
                Response.Redirect("HR_AppliedPosition.aspx");
                BindList();
            }
        }

        protected void gvJobType_RowEditing(object sender, GridViewEditEventArgs e)
        {
            lblMessage.Text = string.Empty;
            e.Cancel = true;










            HR_JobType entity = new HR_JobType();
            Int32 SerialNo = Convert.ToInt32(gvJobType.DataKeys[e.NewEditIndex].Value);

            entity = objHR_JobTypeDAL.HR_JobType_GetBySl(SerialNo);

            ddlType.SelectedValue = entity.JobCat_Id.ToString();

            ddlType_SelectedIndexChanged(sender, e);

            ddldept.SelectedValue = entity.DepartmentID.ToString();

            txtPosition.Text = Convert.ToString(entity.Job_Post);
            txtPriority.Text = Convert.ToString(entity.Priority);
            txtID.Text = Convert.ToString(entity.JobType_Id);

            






            btnSubmit.Text = "Update";
        }


       


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

        protected void ddlType_SelectedIndexChanged(object sender, EventArgs e)
        {

            if (Convert.ToString(ddlType.SelectedValue) != "-- Please Select --")
            {
                CommonBinder.LoadDept_byCategory(ddldept, Convert.ToInt32(ddlType.SelectedValue));
            }
            else
            {
                CommonBinder.LoadSubject_NULL(ddldept);
            }

           
        }
    }
}