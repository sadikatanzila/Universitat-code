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
    public partial class HR_MenuHeader : System.Web.UI.Page
    {
        HR_MenuHeadWebDAL objHR_MenuHeadWebDAL = new HR_MenuHeadWebDAL();
        string s_n;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
               BindList();

            }
            else
            {

            }
        }


        private void BindList()
        {
            List<HR_MenuHeadWeb> EU_UpcomingEventsList = objHR_MenuHeadWebDAL.HR_MenuHeadWeb_GetAll();
            gvPagesList.DataSource = EU_UpcomingEventsList;
            gvPagesList.DataBind();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            if (txtPage.Text!= "")
            {
                 HR_MenuHeadWeb entity = new HR_MenuHeadWeb();


            entity.HR_MenuHeadWebName = txtPage.Text;
            entity.Priority = Convert.ToInt32(txtPriority.Text) ;

            Int32 Id = 0;

            if (btnSubmit.Text == "Save")
            {
                // entity.PictureLocation = Convert.ToString(Session["picloc"]);

                Id = objHR_MenuHeadWebDAL.Add(entity);


                if (Id > 0)
                {
                    lblMessage.Text = "Data is Inserted Successfully";
                    lblMessage.ForeColor = Color.Green;
                    btnClear_Click(sender, e);
                    BindList();
                }
            }
            else
            {
               
                entity.HR_MenuHeadWebID = Convert.ToInt32(txtID.Text);

                Id = objHR_MenuHeadWebDAL.Update(entity);

                lblMessage.Text = "Data is Updated Successfully";
                lblMessage.ForeColor = Color.Green;
                btnClear_Click(sender, e);
                BindList();
                btnSubmit.Text = "Submit";

                Response.Redirect("HR_MenuHeader.aspx");
            }
            }
            else
            {
                lblMessage.Text = "Please fill up the Header Box.";
            }
           
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtPage.Text = "";
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
            int success = objHR_MenuHeadWebDAL.Delete(SerialNo);
            if (success > 0)
            {
                // Clear();
                lblMessage.Text = "Data is being Deleted";
                Response.Redirect("HR_MenuHeader.aspx");
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
            HR_MenuHeadWeb entity = new HR_MenuHeadWeb();
            Int32 PageId = Convert.ToInt32(gvPagesList.DataKeys[e.NewEditIndex].Value);
            entity = objHR_MenuHeadWebDAL.Get_AllInfoById(PageId);

            txtPage.Text = Convert.ToString(entity.HR_MenuHeadWebName);
            txtPriority.Text = Convert.ToString(entity.Priority);
            txtID.Text = Convert.ToString(entity.HR_MenuHeadWebID);

        }
    }
}