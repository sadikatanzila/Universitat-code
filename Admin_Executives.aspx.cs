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
    public partial class Admin_Executives : System.Web.UI.Page
    {
        Clubs_ExecutivesDAL objClubs_ExecutivesDAL = new Clubs_ExecutivesDAL();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                CommonBinder.ClubType_LoadForDll(ddlClubType);
                BindList();

            }
            else
            {

            }
        }


        private void BindList()
        {
            List<Clubs_Executives> AlumniList = objClubs_ExecutivesDAL.Clubs_Executives_GetAll();
            gvExecutive.DataSource = AlumniList;
            gvExecutive.DataBind();
        }


        int i = 1;
        protected void gvExecutive_RowDataBound(object sender, GridViewRowEventArgs e)
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
            if (txtName.Text == "")
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
            Clubs_Executives entity = new Clubs_Executives();

            entity.Name = txtName.Text;
            entity.Post = txtPost.Text;
            entity.ID = txtID.Text;
            entity.ClubsID = Convert.ToInt32(ddlClubType.SelectedValue);

            Int32 Id = 0;


            if (Submit.Text == "Save")
            {
                entity.InsertionTime = DateTime.Now;
                entity.UserID = Convert.ToInt32(Session["userID"]);

                Id = objClubs_ExecutivesDAL.Add_Clubs_Executives(entity);



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

                entity.ExecutiveID = Convert.ToInt32(txtExecutiveID.Text);
                Id = objClubs_ExecutivesDAL.Update_Clubs_Executives(entity);

                lblMessage.Text = "Data is Updated Successfully";
                lblMessage.ForeColor = Color.Green;
                Clear();
                BindList();
                Submit.Text = "Save";

                Response.Redirect("Admin_Coordinators.aspx");
            }

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            Clear();
        }

        private void Clear()
        {
            txtName.Text = "";
            txtExecutiveID.Text = "";
            txtPost.Text = "";
            txtID.Text = "";
            ddlClubType.SelectedValue = "0";
        }

        protected void gvExecutive_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Int32 Clubs_ExecutivesID = Convert.ToInt32(gvExecutive.DataKeys[e.RowIndex].Value);


            int success = objClubs_ExecutivesDAL.Clubs_Executives_Delete(Clubs_ExecutivesID);
            if (success > 0)
            {
                // Clear();
                lblMessage.Text = "Data is being Deleted";
                Response.Redirect("Admin_Coordinators.aspx");
                BindList();
            }
        }

        protected void gvExecutive_RowEditing(object sender, GridViewEditEventArgs e)
        {
            lblMessage.Text = string.Empty;
            e.Cancel = true;

            GetSelectedData(sender, e);
            Submit.Text = "Update";
        }

        private void GetSelectedData(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            Clubs_Executives entity = new Clubs_Executives();
            Int32 Clubs_ExecutivesID = Convert.ToInt32(gvExecutive.DataKeys[e.NewEditIndex].Value);
            entity = objClubs_ExecutivesDAL.Get_Clubs_ExecutivesInfoID(Clubs_ExecutivesID);


            txtName.Text = entity.Name;

            txtExecutiveID.Text = Convert.ToString(entity.ExecutiveID);
            txtPost.Text = entity.Post;
            txtID.Text = entity.ID;
            ddlClubType.SelectedValue = Convert.ToString(entity.ClubsID);

        }



        protected void gvExecutive_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvExecutive.PageIndex = e.NewPageIndex;
            BindList();
        }
    }
}