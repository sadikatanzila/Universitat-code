using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Eastern_Uni.DAL;
using EasternUni.BO;
using System.Text.RegularExpressions;
using System.Globalization;


namespace Eastern_Uni
{
    public partial class OSA_ClubsDtl : System.Web.UI.Page
    {
        Clubs_CoordinatorsDAL objClubs_CoordinatorsDAL = new Clubs_CoordinatorsDAL();
        Clubs_ExecutivesDAL objClubs_ExecutivesDAL = new Clubs_ExecutivesDAL();
        Clubs_FutureEventsDAL objClubs_FutureEventsDAL = new Clubs_FutureEventsDAL();


        ClubsDAL objClubsDAL = new ClubsDAL();
        int i = 1;
        int j = 1;
        int k = 1;

        string AESKey = "Key@AES1234";
        string token = "";
        
        protected void Page_Load(object sender, EventArgs e)
        {
            BindClubsInfo();
            BindExecutives();
            BindCoordinators();

            BindFutureEvents();
        }

       
        private void BindFutureEvents()
        {
            string current = DateTime.Now.ToString("dd/MM/yyyy");
            DateTime Current_Time = DateTime.ParseExact(current, "dd/MM/yyyy", CultureInfo.CurrentCulture);

            if (Request.QueryString["token"] != null)
            {
                token = Request.QueryString["token"].ToString();
            }
            else
                Response.Redirect("OSA_Clubs.aspx");

            string txtDecryptedString = AESEncryptionDecryption.AESEncryptionDecryption.Decrypt(token, AESKey);
            Int32 ClubsID = Convert.ToInt32(txtDecryptedString);


           // Int32 ClubsID = Convert.ToInt32(Session["ClubsID"]);
            List<Clubs_FutureEvents> AlumniList = objClubs_FutureEventsDAL.Selected_Clubs_FutureEvents(ClubsID, Current_Time);
            gvClubsEvents.DataSource = AlumniList;
            gvClubsEvents.DataBind();

        }
        private void BindCoordinators()
        {
            if (Request.QueryString["token"] != null)
            {
                token = Request.QueryString["token"].ToString();
            }
            else
                Response.Redirect("OSA_Clubs.aspx");

            string txtDecryptedString = AESEncryptionDecryption.AESEncryptionDecryption.Decrypt(token, AESKey);
            Int32 ClubsID = Convert.ToInt32(txtDecryptedString);            
            List<Clubs_Coordinators> AlumniList = objClubs_CoordinatorsDAL.Selected_Coordinators(ClubsID);
            gvCoordinators.DataSource = AlumniList;
            gvCoordinators.DataBind();

        }

        private void BindExecutives()
        {
            if (Request.QueryString["token"] != null)
            {
                token = Request.QueryString["token"].ToString();
            }
            else
                Response.Redirect("OSA_Clubs.aspx");

            string txtDecryptedString = AESEncryptionDecryption.AESEncryptionDecryption.Decrypt(token, AESKey);
            Int32 ClubsID = Convert.ToInt32(txtDecryptedString);
            List<Clubs_Executives> AlumniList = objClubs_ExecutivesDAL.Selected_ClubsExecutives(ClubsID);
            gvExecutive.DataSource = AlumniList;
            gvExecutive.DataBind();

        }
        private void BindClubsInfo()
        {
            Clubs entity = new Clubs();
            if (Request.QueryString["token"] != null)
            {
                token = Request.QueryString["token"].ToString();
            }
            else
                Response.Redirect("OSA_Clubs.aspx");

            string txtDecryptedString = AESEncryptionDecryption.AESEncryptionDecryption.Decrypt(token, AESKey);
            Int32 ClubsID = Convert.ToInt32(txtDecryptedString);
            entity = objClubsDAL.Get_ClubsInfoID(ClubsID);



            lblClubsTitle.Text = entity.Name;
            lblDetails.Text = entity.Details;

            lblObjectives.Text = entity.Objectives;

            lblActivities.Text = entity.Activities;
        }

        protected void gvCoordinators_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvCoordinators.PageIndex = e.NewPageIndex;
            BindCoordinators();
        }

        protected void gvCoordinators_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Label lblSerial = (Label)e.Row.FindControl("lblSerial");
                lblSerial.Text = j.ToString();
                j++;
                //when mouse is over the row, save original color to new attribute, and change it to highlight yellow color
                e.Row.Attributes.Add("onmouseover", "this.originalstyle=this.style.backgroundColor;this.style.backgroundColor='#99CCFF'");
                //when mouse leaves the row, change the bg color to its original value   
                e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=this.originalstyle;");
            }
        }

        protected void gvExecutive_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvExecutive.PageIndex = e.NewPageIndex;
            BindExecutives();
        }

        protected void gvExecutive_RowDataBound(object sender, GridViewRowEventArgs e)
        {
           
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Label lblSerial = (Label)e.Row.FindControl("lblSerial");
                lblSerial.Text = i.ToString();
                i++;
                //when mouse is over the row, save original color to new attribute, and change it to highlight yellow color
                e.Row.Attributes.Add("onmouseover", "this.originalstyle=this.style.backgroundColor;this.style.backgroundColor='#99CCFF'");
                //when mouse leaves the row, change the bg color to its original value   
                e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=this.originalstyle;");
            }
        }

        protected void gvClubsEvents_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvClubsEvents.PageIndex = e.NewPageIndex;
            BindFutureEvents();
        }

        protected void gvClubsEvents_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Label lblSerial = (Label)e.Row.FindControl("lblSerial");
                lblSerial.Text = k.ToString();
                k++;
                //when mouse is over the row, save original color to new attribute, and change it to highlight yellow color
                e.Row.Attributes.Add("onmouseover", "this.originalstyle=this.style.backgroundColor;this.style.backgroundColor='#99CCFF'");
                //when mouse leaves the row, change the bg color to its original value   
                e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=this.originalstyle;");
            }
        }

        protected void gvClubsEvents_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GetSelectedData(e);
        }


        private void GetSelectedData(System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            Session["Clubs_EventsID"] = Convert.ToInt32(((Label)gvClubsEvents.Rows[e.NewEditIndex].FindControl("lblEventsID")).Text);
            Response.Redirect("OSA_ClubsEventsDtl.aspx");
        }
    }
}