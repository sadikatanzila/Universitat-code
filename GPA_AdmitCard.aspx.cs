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

namespace Eastern_Uni
{
    public partial class GPA_AdmitCard : System.Web.UI.Page
    {
        SqlDataAdapter dadapter_e;
        DataSet dset_e;
        PagedDataSource adsource_e;
        string connstring_e = "database=Eastern_University;server=localhost\\sqlexpress;user=sa;password=1086042g6";
        int pos_e;

        GPA_RegistrationDAL objGPA_RegistrationDAL = new GPA_RegistrationDAL();
        string sql;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToString(Session["TrackingNo"]) == null || Convert.ToString(Session["TrackingNo"]) == "")
            {
                Response.Redirect("RegisteredGPA.aspx");

            }
            else
            {
                GetSelectedData();
            }
        }

        private void GetSelectedData()
        {
            GPA_Registration entity = new GPA_Registration();
            // string SerialID = Convert.ToString(Session["Sl"]);
            string TrackingNo = Convert.ToString(Session["TrackingNo"]);

            entity = objGPA_RegistrationDAL.GetInfo_TrackingNo(TrackingNo);

            lblSl.Text = Convert.ToString(Session["TrackingNo"]);

            lblName.Text = Convert.ToString(entity.Name);
            lbl_FName.Text = Convert.ToString(entity.FatherName);
            lbl_MName.Text = Convert.ToString(entity.MotherName);

            lblBoard.Text = entity.Board;
          //  lblYear.Text = entity.Year;

            lblInstitution.Text = entity.Institution;


            lblRoll.Text = entity.Roll;
            lblReg.Text = entity.RegNo;
            lblGPA.Text = entity.GPA;
            lblID.Text = entity.Roll;
            lblgrp.Text = entity.Subject;

            
            TrackingNo = null;
            // txtdtl.Text = replaceOposite(entity.Course_Detail);
        }

    
    }
}