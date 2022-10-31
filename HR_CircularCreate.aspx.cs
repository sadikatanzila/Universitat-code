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
    public partial class HR_CircularCreate : System.Web.UI.Page
    {
        HR_JobCircularDAL objHR_JobCircularDAL = new HR_JobCircularDAL();
        HR_WebCodeDAL objHR_WebCodeDAL = new HR_WebCodeDAL();
        HR_JobPostDAL objHR_JobPostDAL = new HR_JobPostDAL();


        string s_n;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                BindList();
                CommonBinder.SemisterType_LoadForDll(ddlSemester);
              

            }
            else
            {

            }
        }


        #region create_TrackingNo
        string truckingExt = null;
        protected void CreateTruckingNo()
        {
            truckingExt = Convert.ToInt32(txtYear.Text) + "" + Convert.ToInt32(ddlSemester.SelectedValue);

            string ext = "EU23";


            HR_WebCode Extention = new HR_WebCode();
            Extention = objHR_WebCodeDAL.HR_WebCode_GetTruckingExt(ext);
            int Sl = Extention.WebCode_Sl;

            string code = "";

            int no = Convert.ToInt32(Extention.Code);

            if (no < 10)
                code = "00000000" + no;
            else if (no < 100)
                code = "0000000" + no;
            else if (no < 1000)
                code = "000000" + no;
            else if (no < 10000)
                code = "00000" + no;
            else if (no < 100000)
                code = "0000" + no;
            else if (no < 1000000)
                code = "000" + no;
            else if (no < 10000000)
                code = "00" + no;


            Int32 Id = objHR_WebCodeDAL.TruckingExt_Update(Extention);


            MsgError.Text = truckingExt + "" + code;

            Session["JC_TrackingNo"] = MsgError.Text;
        }

        private void autogenerateCircularName()
        {
            //firstly check have any circular running in following date

            //if have that, auto come in a message
            //if nothing generate that
            CreateTruckingNo();
        }


        #endregion

      

        private void BindList()
        {
            List<HR_JobCircular> EU_UpcomingEventsList = objHR_JobCircularDAL.HR_JobCircular_GetAll();
            grdJobCircular.DataSource = EU_UpcomingEventsList;
            grdJobCircular.DataBind();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            
            autogenerateCircularName();

            if (Convert.ToString(Session["JC_TrackingNo"]) != null)
            {
                if (txtdeadline.Text != "")
                {
                    HR_JobCircular entity = new HR_JobCircular();

                    entity.CircularNo = txtCircular.Text;
                    entity.Circular_IDGn = Convert.ToString(Session["JC_TrackingNo"]);
                    entity.Year = Convert.ToInt32(txtYear.Text);
                    entity.SemisterID = Convert.ToInt32(ddlSemester.SelectedValue);
                    entity.Deadline = DateTime.ParseExact(txtdeadline.Text, "dd/MM/yyyy", CultureInfo.CurrentCulture);

                    if (chkDeactive.Checked != true)
                    {
                        entity.IsActive = true;
                    }
                    else
                    {
                        entity.IsActive = false;
                    }


                    Int32 Id = 0;

                    if (btnSubmit.Text == "Save")
                    {
                        entity.CreateDate = Convert.ToDateTime(DateTime.Now);
                        entity.CreatedBy = Convert.ToInt32(Session["HR_UserID"]);


                        Id = objHR_JobCircularDAL.HR_JobCircular_Add(entity);


                        if (Id > 0)
                        {
                            lblMessage.Text = "Data is Inserted Successfully";
                            MsgError.Text = "";
                            lblMessage.ForeColor = Color.Green;
                            btnClear_Click(sender, e);
                            BindList();
                        }
                    }
                    else
                    {
                        entity.UpdateDate = Convert.ToDateTime(DateTime.Now);
                        entity.UpdatedBy = Convert.ToInt32(Session["HR_UserID"]);

                        entity.JobCircular_ID = Convert.ToInt32(txtID.Text);

                        Id = objHR_JobCircularDAL.HR_JobCircular_Update(entity);

                        lblMessage.Text = "Data is Updated Successfully";
                        lblMessage.ForeColor = Color.Green;
                        btnClear_Click(sender, e);
                        BindList();
                        btnSubmit.Text = "Submit";

                        Response.Redirect("HR_CircularCreate.aspx");
                    }
                }
                else
                {
                    lblMessage.Text = "Please fill up the Header Box.";
                }
            }

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtdeadline.Text = "";
            txtYear.Text = "";
            txtCircular.Text = "";
            ddlSemester.SelectedIndex = 0;
        }

        protected void grdJobCircular_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdJobCircular.PageIndex = e.NewPageIndex;
            BindList();
        }


        int j = 1;
        protected void grdJobCircular_RowDataBound(object sender, GridViewRowEventArgs e)
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

        protected void grdJobCircular_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Int32 SerialNo = Convert.ToInt32(grdJobCircular.DataKeys[e.RowIndex].Value);
            int success = objHR_JobCircularDAL.HR_JobCircular_Delete(SerialNo);
            if (success > 0)
            {
                // Clear();
                lblMessage.Text = "Data is being Deleted";
                Response.Redirect("HR_CircularCreate.aspx");
                BindList();
            }
        }

        protected void grdJobCircular_RowEditing(object sender, GridViewEditEventArgs e)
        {
            lblMessage.Text = string.Empty;
            e.Cancel = true;
            GetSelectedData(e);

            btnSubmit.Text = "Update";
        }


        private void GetSelectedData(System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            HR_JobCircular entity = new HR_JobCircular();
            Int32 PageId = Convert.ToInt32(grdJobCircular.DataKeys[e.NewEditIndex].Value);
            entity = objHR_JobCircularDAL.HR_JobCircular_GetBySl(PageId);

            txtdeadline.Text = entity.Deadline.ToString("dd/MM/yyyy");

            ddlSemester.SelectedValue = entity.SemisterID.ToString();

            txtID.Text = Convert.ToString(entity.JobCircular_ID);
            txtYear.Text = Convert.ToString(entity.Year);
            txtCircular.Text = entity.CircularNo;

        }
    }
}