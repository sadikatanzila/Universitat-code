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
    public partial class Admin_FutureEvents : System.Web.UI.Page
    {

        Clubs_FutureEventsDAL objClubs_FutureEventsDAL = new Clubs_FutureEventsDAL();



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
            List<Clubs_FutureEvents> Clubs_FutureEventsList = objClubs_FutureEventsDAL.LoadClubs_FutureEvents_GetAll();
            gvClubsEvent.DataSource = Clubs_FutureEventsList;
            gvClubsEvent.DataBind();
        }

        protected void gvClubsEvent_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvClubsEvent.PageIndex = e.NewPageIndex;
            BindList();
        }
        int j = 1;
        protected void gvClubsEvent_RowDataBound(object sender, GridViewRowEventArgs e)
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

        protected void gvClubsEvent_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Int32 SerialNo = Convert.ToInt32(gvClubsEvent.DataKeys[e.RowIndex].Value);


            int success = objClubs_FutureEventsDAL.Clubs_FutureEvents_Delete(SerialNo);
            if (success > 0)
            {
                // Clear();
                lblMessage.Text = "Data is being Deleted";
                Response.Redirect("Admin_FutureEvents.aspx");
                BindList();
            }
        }

        protected void gvClubsEvent_RowEditing(object sender, GridViewEditEventArgs e)
        {

            lblMessage.Text = string.Empty;
            e.Cancel = true;

            GetSelectedData(e);
            Submit.Text = "Update";
        }


        private void GetSelectedData(System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            Clubs_FutureEvents entity = new Clubs_FutureEvents();
            Int32 EventsID = Convert.ToInt32(gvClubsEvent.DataKeys[e.NewEditIndex].Value);
            entity = objClubs_FutureEventsDAL.Get_StntInfoById(EventsID);

            txtEventsID.Text = Convert.ToString(entity.EventsID);

            txtfrmDate.Text = entity.FromDate.ToString("dd/MM/yyyy");
            txttoDate.Text = entity.ToDate.ToString("dd/MM/yyyy");
            txtTime.Text = entity.Time;
            txtVenue.Text = entity.Venue;

            txtHeadline.Text = Convert.ToString(entity.Headline);
            txtDetails.Text =  replaceOposite(Convert.ToString(entity.Details));

            txtPictureLocation.Text = Convert.ToString(entity.PictureLocation);
            txtPictureLocation.Visible = true;
            txtEmail.Text = Convert.ToString(entity.Mail);

            txtRemarks.Text = entity.Remarks;
            ddlClubType.SelectedValue = entity.ClubsID.ToString();


        }

        protected void Submit_Click(object sender, EventArgs e)
        {

            //if ( txtYear.Text == null )
            //{
            //    lblMessage.Text = "Please fill-up the necessary box's information";
            //   return;
            //}
            //else
            //{
            Save();
            //}
        }


        #region Web Form Designer generated code
        override protected void OnInit(EventArgs e)
        {
            InitializeComponent();
            base.OnInit(e);
        }


        private void InitializeComponent()
        {
            this.Submit1.ServerClick += new System.EventHandler(this.Submit1_ServerClick);
            this.Load += new System.EventHandler(this.Page_Load);

        }

        private void Submit1_ServerClick(object sender, System.EventArgs e)
        {
            if ((File1.PostedFile != null) && (File1.PostedFile.ContentLength > 0))
            {
                string fn = System.IO.Path.GetFileName(File1.PostedFile.FileName);
                string SaveLocation = Server.MapPath("FutureEvents") + "\\" + fn;
                Session["picloc"] = "FutureEvents" + "/" + fn;
                try
                {
                    File1.PostedFile.SaveAs(SaveLocation);
                    Response.Write("The file has been uploaded.");
                    lblmsg.Text = "The file has been uploaded.";
                }
                catch (Exception ex)
                {
                    Response.Write("Error: " + ex.Message);
                    lblMessage.Text = "Error to upload file";
                }
            }
            else
            {
                Response.Write("Please select a file to upload.");
            }
        }
        #endregion





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
        private void Save()
        {
           

            Clubs_FutureEvents entity = new Clubs_FutureEvents();


            entity.ClubsID = Convert.ToInt32(ddlClubType.SelectedValue);
            entity.Headline = txtHeadline.Text;
            entity.Details = replace_(txtDetails.Text);
            entity.Mail = txtEmail.Text;
            entity.PictureLocation = Convert.ToString(Session["picloc"]);
            entity.Remarks = txtRemarks.Text;
            entity.Venue = txtVenue.Text;
            entity.Time = txtTime.Text;
            //System.Data.SqlTypes.SqlDateTime getDate;
            //set DateTime null
          //  getDate = SqlDateTime.Null;
          

            entity.FromDate = DateTime.ParseExact(txtfrmDate.Text, "dd/MM/yyyy", CultureInfo.CurrentCulture);
            if (txttoDate.Text != "")
            {
                txttoDate.Text = txttoDate.Text;
                entity.ToDate = DateTime.ParseExact(txttoDate.Text, "dd/MM/yyyy", CultureInfo.CurrentCulture);
            }
            else
            {
                //txttoDate.Text = null;
                entity.ToDate = DateTime.ParseExact(null, "dd/MM/yyyy", CultureInfo.CurrentCulture); 
            }
            Int32 Id = 0; 

            if (Submit.Text == "Save")
            {

                Id = objClubs_FutureEventsDAL.Add_Clubs_FutureEvents(entity);



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

                entity.EventsID = Convert.ToInt32(txtEventsID.Text);
                Id = objClubs_FutureEventsDAL.Update_Clubs_FutureEvents(entity);

                lblMessage.Text = "Data is Updated Successfully";
                lblMessage.ForeColor = Color.Green;
                Clear();
                BindList();
                Submit.Text = "Submit";

                Response.Redirect("Admin_FutureEvents.aspx");
            }
        }
        protected void btnClear_Click(object sender, EventArgs e)
        {
            Clear();
        }

        public void Clear()
        {
            txtEventsID.Text = "";
            txtfrmDate.Text = "";
            txttoDate.Text = "";
            txtHeadline.Text = "";
            txtDetails.Text = "";
            txtPictureLocation.Text = "";
            txtRemarks.Text = "";
            txtEmail.Text = "";
            txtVenue.Text = "";

            ddlClubType.SelectedValue = "0";
            Submit.Text = "Save";
        }
    }
}