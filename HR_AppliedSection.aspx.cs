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
    public partial class HR_AppliedSection : System.Web.UI.Page
    {
        HR_DepartmentDAL objHR_DepartmentDAL = new HR_DepartmentDAL();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                BindList();
                CommonBinder.LoadDDLJob_Cat(ddlType);
            }
            else
            {

            }
           
        }


        private void Clear()
        {
            ddlType.SelectedIndex = 0;
           
            txtDepartment.Text = "";
            txtPriority.Text = "";
            btnSubmit.Text = "Save";
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            Clear();
        }




        private void BindList()
        {
            List<HR_Department> Admisssion_StdList = objHR_DepartmentDAL.HR_Department_GetAll();
            gvAppliedDept.DataSource = Admisssion_StdList;
            gvAppliedDept.DataBind();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            HR_Department entity = new HR_Department();



            entity.JobCat_Id = Convert.ToInt32(ddlType.SelectedValue);
            entity.Department = txtDepartment.Text;

            entity.Priority = txtPriority.Text;


            Int32 Id = 0;
            if (btnSubmit.Text == "Save")
            {

                entity.CreateDate = Convert.ToDateTime(DateTime.Now);
                entity.CreatedBy = Convert.ToInt32(Session["HR_UserID"]);

                Id = objHR_DepartmentDAL.HR_Department_Add(entity);



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

                entity.DepartmentID = Convert.ToInt32(txtID.Text);

                Id = objHR_DepartmentDAL.HR_Department_Update(entity);

                lblMessage.Text = "Data is Updated Successfully";
                lblMessage.ForeColor = Color.Green;
                Clear();
                BindList();
                btnSubmit.Text = "Submit";

                Response.Redirect("HR_AppliedSection.aspx");
            }
        }

        protected void gvAppliedDept_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvAppliedDept.PageIndex = e.NewPageIndex;
            BindList();
        }

        protected void gvAppliedDept_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Int32 SerialNo = Convert.ToInt32(gvAppliedDept.DataKeys[e.RowIndex].Value);


            int success = objHR_DepartmentDAL.HR_Department_Delete(SerialNo);
            if (success > 0)
            {
                Clear();
                lblMessage.Text = "Data is being Deleted";
                Response.Redirect("HR_AppliedSection.aspx");
                BindList();
            }
        }

        protected void gvAppliedDept_RowEditing(object sender, GridViewEditEventArgs e)
        {
            lblMessage.Text = string.Empty;
            e.Cancel = true;

            GetSelectedData(e);
            btnSubmit.Text = "Update";
        }


        private void GetSelectedData(System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            HR_Department entity = new HR_Department();
            Int32 SerialNo = Convert.ToInt32(gvAppliedDept.DataKeys[e.NewEditIndex].Value);

            entity = objHR_DepartmentDAL.HR_Department_GetBySl(SerialNo);

           
            ddlType.SelectedValue = entity.JobCat_Id.ToString();
            txtDepartment.Text = Convert.ToString(entity.Department);
            txtID.Text = Convert.ToString(entity.DepartmentID);

            txtPriority.Text = Convert.ToString(entity.Priority);


        }


        int j = 1;
        protected void gvAppliedDept_RowDataBound(object sender, GridViewRowEventArgs e)
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
    }
}