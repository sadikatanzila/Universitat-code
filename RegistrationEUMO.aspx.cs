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
using System.Data.Common;


namespace Eastern_Uni
{
    public partial class RegistrationEUMO : System.Web.UI.Page
    {

        MathOlympiadDAL objMathOlympiadDAL = new MathOlympiadDAL();
        HR_WebCodeDAL objHR_WebCodeDAL = new HR_WebCodeDAL();


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                DateTime t1 = DateTime.Now;
                DateTime last_Date = new DateTime(2018, 3, 17, 0, 0, 0);
                DateTime starting_date = new DateTime();

                setCaptcha();

                if (Session.Count == 0)
                    Response.Redirect("EUMO_login.aspx");
                else
                    if (String.IsNullOrEmpty(Session["UserID_Admission"].ToString()))
                    {
                        Response.Redirect("EUMO_login.aspx");
                    }
                    else
                    {

                        if (t1 < last_Date)
                        {
                            lblMessage.Text = "";
                            pnlRegistration.Visible = true;
                            Submit.Visible = true;
                        }
                        /*   else
                               if (t1 > last_Date)
                               {
                                   pnlRegistration.Visible = true;
                                   Submit.Visible = true;
                               }
                         */
                        else
                        {
                            pnlRegistration.Visible = false;
                            lblmssg_lastDate.Text = "Registration date has been expired";
                            Label8.Visible = false;
                            Submit.Visible = false;
                        }
                    }


            }
            else
            {

            }
        }


        private void setCaptcha()
        {

            var rand = new Random((int)DateTime.Now.Ticks);
            //generate new question
            int a = rand.Next(10, 99);
            int b = rand.Next(0, 9);

            lblNum1.Text = Convert.ToString(a);
            lblNum2.Text = Convert.ToString(b);
            lblPlus.Text = "+";

        }
        protected void Submit_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();



            if (txtSum.Text != "")
            {
                int result = Convert.ToInt32(txtSum.Text);

                int a = Convert.ToInt32(lblNum1.Text);
                int b = Convert.ToInt32(lblNum2.Text);


                if (a + b == result)
                {
                    dt = Registration_GetAll("EUMO_GetAllby_NameRollMobile", txtName.Text, txtStudentID.Text, txtCellnumber.Text, Convert.ToString(ddlBoard.SelectedItem));


                    if (dt.Rows.Count > 0)
                    {

                        lblMessage.Text = "Sorry!! This student already have registered";
                        lblMessage.ForeColor = System.Drawing.Color.Red;

                    }
                    else
                    {

                        if (txtName.Text != "" && txtCellnumber.Text != "" && txtInstitution.Text != ""
                            && txtYear.Text != "" && Convert.ToInt32(ddlSSC.SelectedValue) != 0 && Convert.ToInt32(ddlBoard.SelectedValue) != 0)
                        {
                            CreateTruckingNo();
                            Submit1_ServerClick(sender, e);
                            Save();
                        }
                        else
                        {
                            lblMessage.Text = "Fill up the necessary field for registration";
                            lblMessage.ForeColor = System.Drawing.Color.Red;
                        }
                      

                       /* if (Session["picloc"] == null || Session["picloc"] == "")
                        {

                            lblMessage.Text = "First select your image to upload";
                            lblMessage.ForeColor = System.Drawing.Color.Red;
                        }
                        else
                        {
                          
                         

                        }
                        */
                       
                    }
                }
                else
                {
                    lblMessage.Text = "this result is error, please check try again";
                    setCaptcha();

                }
            }
            else
            {
                lblMessage.Text = "Please Calculate the equation";
                setCaptcha();
            }


        }


        public DataTable Registration_GetAll(string storeProcedure, string Name, string Roll, string MobileNo, string Board)
        {
            DataTable table = new DataTable();
            try
            {
                // DbConnection conn_st=ge;
                DbCommand command = DbProviderHelper.CreateCommand(storeProcedure, CommandType.StoredProcedure);
                AddParameter(command, "@Name", DbType.String, Name);
                AddParameter(command, "@Roll", DbType.String, Roll);
                AddParameter(command, "@MobileNo", DbType.String, MobileNo);
                AddParameter(command, "@Board", DbType.String, Board);

                DbDataAdapter adapter = DbProviderHelper.CreateDataAdapter(command);
                adapter.Fill(table);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            finally
            {
                table.Dispose();
            }
            return table;
        }

        #region create_TrackingNo
        string truckingExt = null;
        protected void CreateTruckingNo()
        {

            MathOlympiad MOentity = new MathOlympiad();
            //string ext = "EUMO2015";
            string ext = "EUMO2018";
         //   MOentity = objMathOlympiadDAL.MathOlympiad_GetTruckingExt(ext);




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


            Session["TrackingNo"] = ext + "" + code;

           
        }




        #endregion

        private void AddParameter(DbCommand oDbCommand, string parameterName, DbType dbType, object value)
        {
            oDbCommand.Parameters.Add(DbProviderHelper.CreateParameter(parameterName, dbType, value));
        }
        private void Save()
        {
           

            if (Convert.ToString(Session["TrackingNo"]) != null)
            {


                MathOlympiad entity = new MathOlympiad();


                entity.Name = txtName.Text;
                entity.Email = txtEmail.Text;
                entity.Cell = txtCellnumber.Text;
                entity.StudentID = null;
                entity.SSC_Olevel = Convert.ToString(ddlSSC.SelectedItem);
                entity.Roll = txtRoll.Text;
                entity.Registration = txtRegiNo.Text;
                entity.GPA = txtGPA.Text;

                if (Session["picloc"] != null)
                    entity.PicLocation = Convert.ToString(Session["picloc"]);
                else
                    entity.PicLocation = null;

                entity.Year = txtYear.Text;
                entity.Institution = txtInstitution.Text;
                entity.TruckingExt = Convert.ToString(Session["TrackingNo"]);


                Int32 Id = 0;


                entity.DataInsert_Time = Convert.ToDateTime(DateTime.Now);
                entity.Board = Convert.ToString(ddlBoard.SelectedItem);

                if (Submit.Text == "Submit")
                {
                    //entity.InsertionTime = DateTime.Now;
                    // entity.UserID = Convert.ToInt32(Session["userID"]);


                    Id = objMathOlympiadDAL.Add_MathOlympiad(entity);

                    if (Id > 0)
                    {
                        lblMessage.Text = "Data is Inserted Successfully";
                        lblMessage.ForeColor = Color.Green;

                        Session["TruckingExt"] = Convert.ToString(Session["TrackingNo"]);
                        Response.Redirect("EUMO_AdmitCard.aspx");

                        Clear();
                        // BindList();
                    }
                }
            }
            else
            {
                lblMessage.Text = "insertion Merge Failed; Please try again later";
            }

        }


     
        protected void btnClear_Click(object sender, EventArgs e)
        {
            Clear();
        }


        public void Clear()
        {
            txtName.Text = "";
            txtEmail.Text = "";
            txtCellnumber.Text = "";
            txtStudentID.Text = "";
            txtRoll.Text = "";
            txtRegiNo.Text = "";
            txtGPA.Text = "";

            txtPictureLocation.Text = "";

            txtYear.Text = "";
            txtInstitution.Text = "";
            lblmsg.Text = "";
            ddlBoard.SelectedValue = "0";
            ddlSSC.SelectedValue = "0";
            Session["picloc"] = "";
            txtSum.Text = "";
            Session["TrackingNo"] = "";
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
        #endregion
        private void Submit1_ServerClick(object sender, System.EventArgs e)
        {

            int fileLen;
            fileLen = File1.PostedFile.ContentLength;
            byte[] input = new byte[fileLen];
           // input = File1.FileBytes;

            string fn = System.IO.Path.GetFileName(File1.PostedFile.FileName);
            string[] fileExtension = fn.Split('.');
            string f_name = fn.Split('\\')[fn.Split('\\').Length - 1];


            if ((File1.PostedFile != null) && (File1.PostedFile.ContentLength > 0))
            {
               string prePicName = System.IO.Path.GetFileName(File1.PostedFile.FileName);

               string SaveLocation = Server.MapPath("Math_Olympiad") + "/" + Session["TrackingNo"] + "." + prePicName.Split('.')[prePicName.Split('.').Length - 1];
               File1.PostedFile.SaveAs(SaveLocation);

             //   string SaveLocation = Server.MapPath("Math_Olympiad") + "/" + Session["TrackingNo"] + "." + prePicName.Split('.')[prePicName.Split('.').Length - 1];
                //Server.MapPath("Math_Olympiad") + "\\" + fn;
               Session["picloc"] = "Math_Olympiad" + "/" + Session["TrackingNo"] + "." + prePicName.Split('.')[prePicName.Split('.').Length - 1];//"Math_Olympiad" + "/" + fn;
                try
                {
                    File1.PostedFile.SaveAs(SaveLocation);
                   // Response.Write("The file has been uploaded.");
                    lblmsg.Text = "The file has been uploaded.";
                }
                catch (Exception ex)
                {
                   // Response.Write("Error: " + ex.Message);
                    lblMessage.Text = "Error to upload file";
                }
            }
            else
            {
              //  Response.Write("Please select a file to upload.");
                Session["picloc"] = null;
            }
        }

    
      
    }
}