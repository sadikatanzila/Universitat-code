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
    public partial class HR_MenuPage : System.Web.UI.Page
    {
        MenuPageWebDAL objMenuPageWebDAL = new MenuPageWebDAL();
        MenuPermissionDAL objMenuPermissionDAL = new MenuPermissionDAL();
        string s_n;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                CommonBinder.MenuHeadWeb_LoadForDll(ddlHeader);
                BindList();

            }
            else
            {

            }
        }


        private void BindList()
        {
            List<MenuPageWeb> EU_UpcomingEventsList = objMenuPageWebDAL.LoadMenuPageWeb_GetAll();
            gvPagesList.DataSource = EU_UpcomingEventsList;
            gvPagesList.DataBind();
        }

        protected void GetLatestSerial_no()
        {

            SqlConnection conn = new SqlConnection("Data Source=localhost\\sqlexpress;Initial Catalog=Eastern_University;Persist Security Info=True;User ID=sa;Password=1086042g6");
            // SqlConnection conn = new SqlConnection("Data Source=USER-PC\\SQLEXPRESSR2;Initial Catalog=Eastern_University;Integrated Security=SSPI;User ID=sa;Password=1086042g6;");
            conn.Open();

            SqlCommand cmd = new SqlCommand("select top 1 SubMenuHeadID from HR_MenuPageWeb order by PageId desc", conn);

            SqlDataReader dtr = cmd.ExecuteReader();
            while (dtr.Read())
            {
                s_n = (string)(dtr[0].ToString());
            }

            int i = Convert.ToInt32(s_n);
            i++;
            s_n = Convert.ToString(i);
            Session["SubMenuHeadID"] = s_n;
            dtr.Close();
            conn.Close();


        }

        private void Save()
        {
            MenuPageWeb entity = new MenuPageWeb();
            MenuPermission MP_entity = new MenuPermission();


            entity.MenuHeadID = Convert.ToInt32(ddlHeader.SelectedValue);

           
            entity.PageName = txtPage.Text;
            entity.URL = txtLink.Text;

            Int32 Id = 0;
            Int32 MP_Id = 0;

            if (btnSubmit.Text == "Save")
            {
                GetLatestSerial_no();
                entity.SubMenuHeadID = Convert.ToInt32(Session["SubMenuHeadID"]);
                entity.CreateBy = Convert.ToInt32(Session["HR_UserID"]);
                entity.CreateDate = Convert.ToDateTime(DateTime.Now);

                Id = objMenuPageWebDAL.Add(entity);

               

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
                entity.UpdateBy = Convert.ToInt32(Session["HR_UserID"]);
                entity.LastUpdateDate = Convert.ToDateTime(DateTime.Now);
                entity.PageId = Convert.ToInt32(txtID.Text);


                MP_entity.MenuHeadID = Convert.ToInt32(ddlHeader.SelectedValue);
                MP_entity.SubMenuHeadID = Convert.ToInt32(Session["SubMenuHeadID_MP"]);//need to catch from text box
                MP_entity.PageID = Convert.ToInt32(txtID.Text);
              //  MP_entity.UserID = Convert.ToString(Session["HR_UserID"]);

                Id = objMenuPageWebDAL.Update(entity);
                MP_Id = objMenuPermissionDAL.Userwise_Update(MP_entity);

                if (Id == 1 && MP_Id == 1)
                {
                    lblMessage.Text = "Data is Updated Successfully";
                }
                lblMessage.ForeColor = Color.Green;
                Clear();
                BindList();
                btnSubmit.Text = "Submit";

                Response.Redirect("HR_MenuPage.aspx");
            }
        }
       
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (txtPage.Text != "" || txtLink.Text != "" || Convert.ToString(ddlHeader.SelectedValue) != "-- Please Select --")
            {
                Save();
            }
            else
            {
                lblMessage.Text = "Please fill up the necessary Box.";
            }
          
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            Clear();
        }

        public void Clear()
        {
            ddlHeader.SelectedIndex = 0;
            txtPage.Text = "";
            txtLink.Text = "";
            txtID.Text = "";
            Session["SubMenuHeadID_MP"] = "";
            btnSubmit.Text = "Save";
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

        protected void gvPagesList_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvPagesList.PageIndex = e.NewPageIndex;
            BindList();
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
            MenuPageWeb entity = new MenuPageWeb();
            Int32 PageId = Convert.ToInt32(gvPagesList.DataKeys[e.NewEditIndex].Value);
            entity = objMenuPageWebDAL.Get_StntInfoById(PageId);

            ddlHeader.SelectedValue = entity.MenuHeadID.ToString();
            txtPage.Text = Convert.ToString(entity.PageName);
            txtLink.Text = Convert.ToString(entity.URL);

            txtID.Text = Convert.ToString(entity.PageId);
            Session["SubMenuHeadID_MP"] = Convert.ToString(entity.SubMenuHeadID);


        }

        protected void gvPagesList_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Int32 SerialNo = Convert.ToInt32(gvPagesList.DataKeys[e.RowIndex].Value);
            int success = objMenuPageWebDAL.Delete(SerialNo);
            if (success > 0)
            {
                // Clear();
                lblMessage.Text = "Data is being Deleted";
                Response.Redirect("HR_MenuPage.aspx");
                BindList();
            }
        }
    }
}