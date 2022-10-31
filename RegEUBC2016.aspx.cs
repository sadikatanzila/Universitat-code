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
using System.IO;

namespace Eastern_Uni
{
    public partial class RegEUBC2016 : System.Web.UI.Page
    {
        EUBC_GroupDAL objEUBC_GroupDAL = new EUBC_GroupDAL();
        EUBCDAL objEUBCDAL = new EUBCDAL();
        HR_WebCodeDAL objHR_WebCodeDAL = new HR_WebCodeDAL();


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                DateTime t1 = DateTime.Now;
                DateTime last_Date = new DateTime(2016, 3, 10, 0, 0, 0);
                DateTime starting_date = new DateTime();

                setCaptcha();

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
                    Submit.Visible = false;
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
            DataTable dt_Grp = new DataTable();
            DataTable dt1 = new DataTable();
            DataTable dt2 = new DataTable();

            if (txtSum.Text != "")
            {
                int result = Convert.ToInt32(txtSum.Text);

                int a = Convert.ToInt32(lblNum1.Text);
                int b = Convert.ToInt32(lblNum2.Text);


                if (a + b == result)
                {
                    dt = Registration_GetAll("EUBC_GetAllby_NameRollMobile", txtName.Text, txtCellnumber.Text, txtEmail.Text);
                    dt1 = Registration_GetAll("EUBC_GetAllby_NameRollMobile", txtName1.Text, txtCellnumber1.Text, txtEmail1.Text);
                    dt2 = Registration_GetAll("EUBC_GetAllby_NameRollMobile", txtName2.Text, txtCellnumber2.Text, txtEmail2.Text);
                    //dt_Grp = RegistrationGrp_GetAll("EUBC_Group_GetAllby_InstitutionBoard", txtInstitution.Text, Convert.ToString(ddlBoard.SelectedItem), txtAddress.Text, Convert.ToString(ddlSSC.SelectedItem));
                    //&& dt_Grp.Rows.Count > 0

                    if (dt.Rows.Count > 0 || dt1.Rows.Count > 0 || dt2.Rows.Count > 0)
                    {

                        lblMessage.Text = "Sorry!! This student already have registered";
                        lblMessage.ForeColor = System.Drawing.Color.Red;

                    }
                    else
                    {

                        if (txtName.Text != "" && txtCellnumber.Text != "" && txtGPA.Text != "" && Convert.ToInt32(ddlDepartment.SelectedValue) != 0
                            && txtName1.Text != "" && txtCellnumber1.Text != "" && txtGPA1.Text != "" && Convert.ToInt32(ddlDepartment1.SelectedValue) != 0
                             && txtName2.Text != "" && txtCellnumber2.Text != "" && txtGPA2.Text != "" && Convert.ToInt32(ddlDepartment2.SelectedValue) != 0
                            && txtInstitution.Text != "" && Convert.ToInt32(ddlBoard.SelectedValue) != 0)
                        {
                            HttpFileCollection hfc = Request.Files;

                            if (hfc[1].ContentLength <= 0 || hfc[2].ContentLength <= 0 || hfc[0].ContentLength <= 0)
                            {
                                lblMessage.Text = "All students images are required";
                                lblMessage.ForeColor = System.Drawing.Color.Red;
                            }
                            else
                            {
                                CreateTruckingNo_Group();
                                //btnUpload_Click1(sender, e);
                                SaveGroup();
                            }


                        }
                        else
                        {
                            lblMessage.Text = "Fill up the necessary field for registration";
                            lblMessage.ForeColor = System.Drawing.Color.Red;
                        }


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

        #region savedata
        private void SaveGroup()
        {
            if (Convert.ToString(Session["GrpTrackingNo"]) != null)
            {
                EUBC_Group entity = new EUBC_Group();

                entity.Institution = txtInstitution.Text;
                entity.Board = Convert.ToString(ddlBoard.SelectedItem);
                entity.Address = txtAddress.Text;
                entity.GroupTruckingExt = Convert.ToString(Session["GrpTrackingNo"]);
                entity.SSC_Olevel = Convert.ToString(ddlSSC.SelectedItem);
                entity.TotalStudent = txtTotalStd.Text;
                entity.DataInsert_Time = Convert.ToDateTime(DateTime.Now);

                Int32 Id = 0;             
               
                if (Submit.Text == "Submit")
                {
                    
                    Id = objEUBC_GroupDAL.Add_EUBC_Group(entity);

                    if (Id > 0)
                    {
                        lblMessage.Text = "Data is Inserted Successfully";
                        lblMessage.ForeColor = Color.Green;



                        SaveStudent1();
                        SaveStudent2();
                        SaveStudent3();


                        Session["GrpTrackingNo"] = Convert.ToString(Session["GrpTrackingNo"]);
                         Response.Redirect("EUBC_AdmitCard.aspx");

                        Clear();
                        ClearAll();
                    }
                }
            }
            else
            {
                lblMessage.Text = "insertion Merge Failed; Please try again later";
            }

        }

        private void SaveStudent1()
        {
            CreateTruckingNo();
            btnUpload_Click1(1);
            if (Convert.ToString(Session["TrackingNo"]) != null)
            {
                EUBC entity = new EUBC();

                entity.GroupTruckingExt = Convert.ToString(Session["GrpTrackingNo"]);
                entity.Name = txtName.Text;
                entity.Email = txtEmail.Text;
                entity.Cell = txtCellnumber.Text;
                entity.GPA = txtGPA.Text;
                entity.Department = Convert.ToString(ddlDepartment.SelectedItem);
                entity.TruckingExt = Convert.ToString(Session["TrackingNo"]);
                entity.DataInsert_Time = Convert.ToDateTime(DateTime.Now);
                entity.PicLocation = Convert.ToString(Session["picloc"]);
                entity.DesignationGrp = txtdesignation1.Text;

                Int32 Id = 0;

                if (Submit.Text == "Submit")
                {
                    Id = objEUBCDAL.Add_EUBC(entity);

                    if (Id > 0)
                    {
                        lblMessage.Text = "Data is Inserted Successfully";
                        lblMessage.ForeColor = Color.Green;

                      //  Clear();
                    }
                }
            }
            else
            {
                lblMessage.Text = "insertion Merge Failed; Please try again later";
            }

        }

        private void SaveStudent2()
        {
            CreateTruckingNo();
            btnUpload_Click1(2);
            if (Convert.ToString(Session["TrackingNo"]) != null)
            {
                EUBC entity = new EUBC();

                entity.GroupTruckingExt = Convert.ToString(Session["GrpTrackingNo"]);
                entity.Name = txtName1.Text;
                entity.Email = txtEmail1.Text;
                entity.Cell = txtCellnumber1.Text;
                entity.GPA = txtGPA1.Text;
                entity.Department = Convert.ToString(ddlDepartment1.SelectedItem);
                entity.TruckingExt = Convert.ToString(Session["TrackingNo"]);
                entity.DataInsert_Time = Convert.ToDateTime(DateTime.Now);
                entity.PicLocation = Convert.ToString(Session["picloc"]);
                entity.DesignationGrp = txtdesignation2.Text;

                Int32 Id = 0;

                if (Submit.Text == "Submit")
                {
                    Id = objEUBCDAL.Add_EUBC(entity);

                    if (Id > 0)
                    {
                        lblMessage.Text = "Data is Inserted Successfully";
                        lblMessage.ForeColor = Color.Green;

                       // Clear();
                    }
                }
            }
            else
            {
                lblMessage.Text = "insertion Merge Failed; Please try again later";
            }

        }

        private void SaveStudent3()
        {
            CreateTruckingNo();
            btnUpload_Click1(3);
            if (Convert.ToString(Session["TrackingNo"]) != null)
            {
                EUBC entity = new EUBC();

                entity.GroupTruckingExt = Convert.ToString(Session["GrpTrackingNo"]);
                entity.Name = txtName2.Text;
                entity.Email = txtEmail2.Text;
                entity.Cell = txtCellnumber2.Text;
                entity.GPA = txtGPA2.Text;
                entity.Department = Convert.ToString(ddlDepartment2.SelectedItem);
                entity.TruckingExt = Convert.ToString(Session["TrackingNo"]);
                entity.DataInsert_Time = Convert.ToDateTime(DateTime.Now);
                entity.PicLocation = Convert.ToString(Session["picloc"]);
                entity.DesignationGrp = txtdesignation3.Text;

                Int32 Id = 0;

                if (Submit.Text == "Submit")
                {
                    Id = objEUBCDAL.Add_EUBC(entity);

                    if (Id > 0)
                    {
                        lblMessage.Text = "Data is Inserted Successfully";
                        lblMessage.ForeColor = Color.Green;

                       
                    }
                }
            }
            else
            {
                lblMessage.Text = "insertion Merge Failed; Please try again later";
            }

        }

        #endregion

        public DataTable Registration_GetAll(string storeProcedure, string Name, string MobileNo, string email)
        {
            DataTable table = new DataTable();
            try
            {
                // DbConnection conn_st=ge;
                DbCommand command = DbProviderHelper.CreateCommand(storeProcedure, CommandType.StoredProcedure);
                AddParameter(command, "@Name", DbType.String, Name);
                AddParameter(command, "@email", DbType.String, email);
                AddParameter(command, "@MobileNo", DbType.String, MobileNo);

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


        public DataTable RegistrationGrp_GetAll(string storeProcedure, string Institution, string Board, string Address, string SSC_Olevel)
        {
            DataTable table = new DataTable();
            try
            {
                // DbConnection conn_st=ge;
                DbCommand command = DbProviderHelper.CreateCommand(storeProcedure, CommandType.StoredProcedure);
                AddParameter(command, "@Institution", DbType.String, Institution);
                AddParameter(command, "@Board", DbType.String, Board);
                AddParameter(command, "@Address", DbType.String, Address);
                AddParameter(command, "@SSC_Olevel", DbType.String, SSC_Olevel);

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

            EUBC_Group MOentity = new EUBC_Group();
            string ext = "EUBC2016";

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


        protected void CreateTruckingNo_Group()
        {

            EUBC_Group MOentity = new EUBC_Group();
            string ext = "EUBCGR2016";

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


            Session["GrpTrackingNo"] = ext + "" + code;


        }

        #endregion

        private void AddParameter(DbCommand oDbCommand, string parameterName, DbType dbType, object value)
        {
            oDbCommand.Parameters.Add(DbProviderHelper.CreateParameter(parameterName, dbType, value));
        }
     

        protected void btnClear_Click(object sender, EventArgs e)
        {
            Clear();
            ClearAll();
        }

        public void ClearAll()
        {
            txtName.Text = "";
            txtEmail.Text = "";
            txtCellnumber.Text = "";
            txtGPA.Text = "";
            ddlDepartment.SelectedValue = "0";

            txtName1.Text = "";
            txtEmail1.Text = "";
            txtCellnumber1.Text = "";
            txtGPA1.Text = "";
            ddlDepartment1.SelectedValue = "0";

            txtName2.Text = "";
            txtEmail2.Text = "";
            txtCellnumber2.Text = "";
            txtGPA2.Text = "";
            ddlDepartment2.SelectedValue = "0";
            
        }
        public void Clear()
        {



            txtInstitution.Text = "";
            ddlBoard.SelectedValue = "0";
            txtAddress.Text = "";
            ddlSSC.SelectedValue = "0";
            txtTotalStd.Text = "";
            Session["picloc"] = "";
            txtSum.Text = "";
            Session["TrackingNo"] = "";
            Session["GrpTrackingNo"] = "";
        }

        int i = 0;
        protected void btnUpload_Click1(int member)
        {
            try
            {

                i = member;
                //To Upload Multiple Files on Single Click
                HttpFileCollection hfc = Request.Files;

                if (i <= hfc.Count)
                {
                    int fileLen;
                    HttpPostedFile hpf = hfc[i-1];
                    fileLen = hpf.ContentLength;
                    byte[] input = new byte[fileLen];
                    // input = File1.FileBytes;

                    string fn = System.IO.Path.GetFileName(hpf.FileName);
                    string[] fileExtension = fn.Split('.');
                    string f_name = fn.Split('\\')[fn.Split('\\').Length - 1];

                    if (hpf.ContentLength > 0)
                    {
                        string prePicName = System.IO.Path.GetFileName(hpf.FileName);

                        string SaveLocation = Server.MapPath("EUBC") + "/" + Session["TrackingNo"] + "." + prePicName.Split('.')[prePicName.Split('.').Length - 1];
                        hpf.SaveAs(SaveLocation);
                        Session["picloc"] = "EUBC" + "/" + Session["TrackingNo"] + "." + prePicName.Split('.')[prePicName.Split('.').Length - 1];//"Math_Olympiad" + "/" + fn;
                        try
                        {
                            hpf.SaveAs(SaveLocation);
                            //lblmsg.Text = "The file has been uploaded.";

                        }
                        catch (Exception ex)
                        {
                            // Response.Write("Error: " + ex.Message);
                            lblMessage.Text = "Error to upload file";
                        }

                        // hpf.SaveAs(Server.MapPath("MyFiles") + "\\" + Path.GetFileName(hpf.FileName));
                    }
                    else
                    {
                        Session["picloc"] = null;
                    }


                }
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.Message);
            }

        }

       
        /*
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
       
        #endregion
       
         */
    }
}