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
    public partial class HR_UserCreate : System.Web.UI.Page
    {
        string s_n;
        HR_UserDAL objHR_UserDAL = new HR_UserDAL();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                GenerateUserCode();
                int i = Convert.ToInt32(s_n);
                i++;
                s_n = Convert.ToString(i);
                txtUserID.Text = s_n;
                BindList();
            }
            else
            {

            }
        }

        private void BindList()
        {
            List<HR_User> Admisssion_StdList = objHR_UserDAL.HR_User_GetAll();
            gvPagesList.DataSource = Admisssion_StdList;
            gvPagesList.DataBind();
        }


        protected void GenerateUserCode()
        {

            SqlConnection conn = new SqlConnection("Data Source=localhost\\sqlexpress;Initial Catalog=Eastern_University;Persist Security Info=True;User ID=sa;Password=1086042g6");
            // SqlConnection conn = new SqlConnection("Data Source=USER-PC\\SQLEXPRESSR2;Initial Catalog=Eastern_University;Integrated Security=SSPI;User ID=sa;Password=1086042g6;");
            conn.Open();

            SqlCommand cmd = new SqlCommand("select top 1 HR_UserId from HR_User order by HR_UserId desc", conn);

            SqlDataReader dtr = cmd.ExecuteReader();
            while (dtr.Read())
            {
                s_n = (string)(dtr[0].ToString());
            }
            dtr.Close();
            conn.Close();


        }

        protected void txtName_TextChanged(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt = objHR_UserDAL.HR_User_GetByHR_UserName(Convert.ToString(txtName.Text));

            if (dt.Rows.Count > 0)
            {
                lblUser.Text = "this user name already has been used, please try to use a different user name.";
            }

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (txtCPass.Text != txtPassword.Text)
            {
                lblmsg.Text = "password is miss-matched with confirm password";
            }

            else
            {

                HR_User entity = new HR_User();

                entity.Faculty_ID = Convert.ToInt32(ddlFaculty.SelectedValue);
                entity.HR_UserId = txtUserID.Text;
                entity.HR_UserName = txtName.Text;
                entity.HR_UserFullName = txtFName.Text;
                entity.PhoneNo = Convert.ToInt64(txtPhn.Text);
                entity.Password = txtPassword.Text;

                entity.ConfirmPassword = txtCPass.Text;
                entity.EmailID = txtMail.Text;


                entity.BrId = 1;

                if (chkUser.Checked == true)
                {
                    entity.IsRemoved = true;
                }
                else
                {
                    entity.IsRemoved = false;
                }

                Int32 Id = 0;
                if (btnSubmit.Text == "Save")
                {

                    entity.CreateDate = Convert.ToDateTime(DateTime.Now);
                    entity.CreatedBy = Convert.ToInt32(Session["HR_UserID"]);

                    Id = objHR_UserDAL.Add(entity);



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

                    entity.Id = Convert.ToInt32(txtID.Text);
                    Id = objHR_UserDAL.Update(entity);

                    lblMessage.Text = "Data is Updated Successfully";
                    lblMessage.ForeColor = Color.Green;
                    Clear();
                    BindList();
                    btnSubmit.Text = "Submit";

                    Response.Redirect("HR_UserCreate.aspx");
                }
            }
        }

        protected void gvPagesList_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvPagesList.PageIndex = e.NewPageIndex;
            BindList();
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

        protected void gvPagesList_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Int32 SerialNo = Convert.ToInt32(gvPagesList.DataKeys[e.RowIndex].Value);


            int success = objHR_UserDAL.Delete(SerialNo);
            if (success > 0)
            {
                Clear();
                lblMessage.Text = "Data is being Deleted";
                Response.Redirect("HR_UserCreate.aspx");
                BindList();
            }
        }

        protected void gvPagesList_RowEditing(object sender, GridViewEditEventArgs e)
        {
            lblMessage.Text = string.Empty;
            e.Cancel = true;

            GetSelectedData(e);
            btnSubmit.Text = "Update";
        }

        private void GetSelectedData(System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            HR_User entity = new HR_User();
            Int32 SerialNo = Convert.ToInt32(gvPagesList.DataKeys[e.NewEditIndex].Value);
            entity = objHR_UserDAL.HR_User_GetById(SerialNo);

            txtFName.Text = Convert.ToString(entity.HR_UserFullName);

            txtPhn.Text = Convert.ToString(entity.PhoneNo);

            txtName.Text = Convert.ToString(entity.HR_UserName);
            txtMail.Text = Convert.ToString(entity.EmailID);
            txtPassword.Text = Convert.ToString(entity.Password);
            txtCPass.Text = Convert.ToString(entity.ConfirmPassword);

            txtUserID.Text = Convert.ToString(entity.HR_UserId);

            txtID.Text = Convert.ToString(entity.Id);

            ddlFaculty.SelectedValue = entity.Faculty_ID.ToString();


        }

        private void Clear()
        {
            txtFName.Text = "";
            txtPhn.Text = "";
            txtName.Text = "";
            txtMail.Text = "";
            txtPassword.Text = "";
            txtCPass.Text = "";
            txtUserID.Text = "";
            ddlFaculty.SelectedValue = "0";

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            Clear();
        }

        protected void txtCPass_TextChanged(object sender, EventArgs e)
        {
            if (txtCPass.Text != txtPassword.Text)
            {
                lblmsg.Text = "password is miss-matched with confirm password";
                txtCPass.Focus();
            }
        }

    }
}