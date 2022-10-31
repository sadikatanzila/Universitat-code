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
    public partial class HR_DeptwiseSubject : System.Web.UI.Page
    {
        HR_SubjectDAL objHR_SubjectDAL = new HR_SubjectDAL();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                BindList();
                CommonBinder.LoadDept(ddlDept);
            }
            else
            {

            }

        }


        private void Clear()
        {
            ddlDept.SelectedIndex = 0;

            txtSubject.Text = "";
            txtPriority.Text = "";
            btnSubmit.Text = "Save";
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            Clear();
        }




        private void BindList()
        {
            List<HR_Subject> Admisssion_StdList = objHR_SubjectDAL.HR_Subject_GetAll();
            gvSubjbyDept.DataSource = Admisssion_StdList;
            gvSubjbyDept.DataBind();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            HR_Subject entity = new HR_Subject();



            entity.DepartmentID = Convert.ToInt32(ddlDept.SelectedValue);
            entity.Subject = txtSubject.Text;

            entity.Priority = txtPriority.Text;


            Int32 Id = 0;
            if (btnSubmit.Text == "Save")
            {

                entity.CreateDate = Convert.ToDateTime(DateTime.Now);
                entity.CreatedBy = Convert.ToInt32(Session["HR_UserID"]);

                Id = objHR_SubjectDAL.HR_Subject_Add(entity);



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

                entity.SubjectID = Convert.ToInt32(txtID.Text);

                Id = objHR_SubjectDAL.HR_Subject_Update(entity);

                lblMessage.Text = "Data is Updated Successfully";
                lblMessage.ForeColor = Color.Green;
                Clear();
                BindList();
                btnSubmit.Text = "Submit";

                Response.Redirect("HR_DeptwiseSubject.aspx");
            }
        }

        protected void gvSubjbyDept_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvSubjbyDept.PageIndex = e.NewPageIndex;
            BindList();
        }

        protected void gvSubjbyDept_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Int32 SerialNo = Convert.ToInt32(gvSubjbyDept.DataKeys[e.RowIndex].Value);


            int success = objHR_SubjectDAL.HR_Subject_Delete(SerialNo);
            if (success > 0)
            {
                Clear();
                lblMessage.Text = "Data is being Deleted";
                Response.Redirect("HR_DeptwiseSubject.aspx");
                BindList();
            }
        }

        protected void gvSubjbyDept_RowEditing(object sender, GridViewEditEventArgs e)
        {
            lblMessage.Text = string.Empty;
            e.Cancel = true;

            GetSelectedData(e);
            btnSubmit.Text = "Update";
        }


        private void GetSelectedData(System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            HR_Subject entity = new HR_Subject();
            Int32 SerialNo = Convert.ToInt32(gvSubjbyDept.DataKeys[e.NewEditIndex].Value);

            entity = objHR_SubjectDAL.HR_Subject_GetBySl(SerialNo);


            ddlDept.SelectedValue = entity.DepartmentID.ToString();
            txtSubject.Text = Convert.ToString(entity.Subject);
            txtID.Text = Convert.ToString(entity.SubjectID);

            txtPriority.Text = Convert.ToString(entity.Priority);


        }


        int j = 1;
        protected void gvSubjbyDept_RowDataBound(object sender, GridViewRowEventArgs e)
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