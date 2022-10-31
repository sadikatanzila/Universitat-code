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
    public partial class Admin_Clubs : System.Web.UI.Page
    {
        ClubsDAL objClubsDAL = new ClubsDAL();

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
            List<Clubs> AlumniList = objClubsDAL.Clubs_GetAll();
            gvClubs.DataSource = AlumniList;
            gvClubs.DataBind();
        }


        int i = 1;
        protected void gvClubs_RowDataBound(object sender, GridViewRowEventArgs e)
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
            Clubs entity = new Clubs();

            entity.Name = txtName.Text;
            entity.Details = replace_(txtDetails.Text);
            entity.Objectives = replace_(txtObjectives.Text);
            entity.Activities = replace_(txtActivities.Text);
            entity.links = txtlinks.Text;

            Int32 Id = 0;


            if (Submit.Text == "Save")
            {
                entity.InsertionTime = DateTime.Now;
                entity.UserID = Convert.ToInt32(Session["userID"]);

                Id = objClubsDAL.Add_Clubs(entity);



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

                entity.ClubsID = Convert.ToInt32(txtClubsID.Text);
                Id = objClubsDAL.Update_Clubs(entity);

                lblMessage.Text = "Data is Updated Successfully";
                lblMessage.ForeColor = Color.Green;
                Clear();
                BindList();
                Submit.Text = "Save";

                Response.Redirect("Admin_Clubs.aspx");
            }

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            Clear();
        }

        private void Clear()
        {
            txtName.Text="";
            txtDetails.Text="";
            txtObjectives.Text="";
            txtActivities.Text = "";
            txtlinks.Text = "";
            
        }

        protected void gvClubs_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Int32 ClubsID = Convert.ToInt32(gvClubs.DataKeys[e.RowIndex].Value);


            int success = objClubsDAL.Clubs_Delete(ClubsID);
            if (success > 0)
            {
                // Clear();
                lblMessage.Text = "Data is being Deleted";
                Response.Redirect("Admin_Clubs.aspx");
                BindList();
            }
        }

        protected void gvClubs_RowEditing(object sender, GridViewEditEventArgs e)
        {
            lblMessage.Text = string.Empty;
            e.Cancel = true;

            GetSelectedData(sender, e);
            Submit.Text = "Update";
        }

        private void GetSelectedData(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            Clubs entity = new Clubs();
            Int32 ClubsID = Convert.ToInt32(gvClubs.DataKeys[e.NewEditIndex].Value);
            entity = objClubsDAL.Get_ClubsInfoID(ClubsID);


            txtName.Text = entity.Name;
            txtDetails.Text = replaceOposite(entity.Details);
            txtObjectives.Text = replaceOposite(entity.Objectives);
            txtActivities.Text = replaceOposite(entity.Activities);
            txtlinks.Text = entity.links;
            txtClubsID.Text = Convert.ToString(entity.ClubsID);

        }


       
        protected void gvClubs_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvClubs.PageIndex = e.NewPageIndex;
            BindList();
        }

       
    }
}