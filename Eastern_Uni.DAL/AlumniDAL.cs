using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.Common;
using Eastern_Uni.DAL;
using EasternUni.BO;

namespace Eastern_Uni.DAL
{
    public class AlumniDAL
    {
        private void BuildEntityAll(DbDataReader reader, Alumni _Alumni)
        {

            _Alumni.Sl = Convert.ToInt32(reader["Sl"]);

            if (reader["Name"] != DBNull.Value)
                _Alumni.Name = Convert.ToString(reader["Name"]);

            if (reader["Graduation_ID"] != DBNull.Value)
                _Alumni.Graduation_ID = Convert.ToInt32(reader["Graduation_ID"]);

            if (reader["GraduationFacultyID"] != DBNull.Value)
                _Alumni.GraduationFacultyID = Convert.ToInt32(reader["GraduationFacultyID"]);

            if (reader["GraduationFaculty"] != DBNull.Value)
                _Alumni.GraduationFaculty = Convert.ToString(reader["GraduationFaculty"]);

            if (reader["GraSubj_ID"] != DBNull.Value)
                _Alumni.GraSubj_ID = Convert.ToInt32(reader["GraSubj_ID"]);

            if (reader["GraSubject"] != DBNull.Value)
                _Alumni.GraSubject = Convert.ToString(reader["GraSubject"]);

            if (reader["GraShiftID"] != DBNull.Value)
                _Alumni.GraShiftID = Convert.ToInt32(reader["GraShiftID"]);

            if (reader["GraShift"] != DBNull.Value)
                _Alumni.GraShift = Convert.ToString(reader["GraShift"]);

            if (reader["GraTypesID"] != DBNull.Value)
                _Alumni.GraTypesID = Convert.ToInt32(reader["GraTypesID"]);

            if (reader["GraTypes"] != DBNull.Value)
                _Alumni.GraTypes = Convert.ToString(reader["GraTypes"]);

            if (reader["SemisterID_Graduate"] != DBNull.Value)
                _Alumni.SemisterID_Graduate = Convert.ToInt32(reader["SemisterID_Graduate"]);

            if (reader["Semister_Graduate"] != DBNull.Value)
                _Alumni.Semister_Graduate = Convert.ToString(reader["Semister_Graduate"]);


            if (reader["PassingMonth_Graguate"] != DBNull.Value)
                _Alumni.PassingMonth_Graguate = Convert.ToString(reader["PassingMonth_Graguate"]);

            if (reader["PassingYear_Graguate"] != DBNull.Value)
                _Alumni.PassingYear_Graguate = Convert.ToString(reader["PassingYear_Graguate"]);

           
            if (reader["UnderGraduation_ID"] != DBNull.Value)
                _Alumni.UnderGraduation_ID = Convert.ToInt32(reader["UnderGraduation_ID"]);

            if (reader["UnderGraduationFacultyID"] != DBNull.Value)
                _Alumni.UnderGraduationFacultyID = Convert.ToInt32(reader["UnderGraduationFacultyID"]);

            if (reader["UnderGraSubj_ID"] != DBNull.Value)
                _Alumni.UnderGraSubj_ID = Convert.ToInt32(reader["UnderGraSubj_ID"]);

            if (reader["UndrGraShiftID"] != DBNull.Value)
                _Alumni.UndrGraShiftID = Convert.ToInt32(reader["UndrGraShiftID"]);

            if (reader["UndrGraTypesID"] != DBNull.Value)
                _Alumni.UndrGraTypesID = Convert.ToInt32(reader["UndrGraTypesID"]);

            if (reader["PassingMonth_UnderGraduate"] != DBNull.Value)
                _Alumni.PassingMonth_UnderGraduate = Convert.ToString(reader["PassingMonth_UnderGraduate"]);

            if (reader["PassingYear_UnderGraduate"] != DBNull.Value)
                _Alumni.PassingYear_UnderGraduate = Convert.ToString(reader["PassingYear_UnderGraduate"]);

            if (reader["SemisterID_UnderGraduate"] != DBNull.Value)
                _Alumni.SemisterID_UnderGraduate = Convert.ToInt32(reader["SemisterID_UnderGraduate"]);


            if (reader["UnderGraduationFaculty"] != DBNull.Value)
                _Alumni.UnderGraduationFaculty = Convert.ToString(reader["UnderGraduationFaculty"]);

            if (reader["UnderGraSubj"] != DBNull.Value)
                _Alumni.UnderGraSubj = Convert.ToString(reader["UnderGraSubj"]);

            if (reader["UndrGraShift"] != DBNull.Value)
                _Alumni.UndrGraShift = Convert.ToString(reader["UndrGraShift"]);

            if (reader["UndrGraTypes"] != DBNull.Value)
                _Alumni.UndrGraTypes = Convert.ToString(reader["UndrGraTypes"]);


            if (reader["Semister_UnderGraduate"] != DBNull.Value)
                _Alumni.Semister_UnderGraduate = Convert.ToString(reader["Semister_UnderGraduate"]);


            
            if (reader["Priority"] != DBNull.Value)
                _Alumni.Priority = Convert.ToString(reader["Priority"]);

            if (reader["Occupation"] != DBNull.Value)
                _Alumni.Occupation = Convert.ToString(reader["Occupation"]);

            if (reader["Designation"] != DBNull.Value)
                _Alumni.Designation = Convert.ToString(reader["Designation"]);

            if (reader["Present_Address"] != DBNull.Value)
                _Alumni.Present_Address = Convert.ToString(reader["Present_Address"]);

            if (reader["Present_ContactNo"] != DBNull.Value)
                _Alumni.Present_ContactNo = Convert.ToString(reader["Present_ContactNo"]);

            if (reader["Present_Mobile"] != DBNull.Value)
                _Alumni.Present_Mobile = Convert.ToString(reader["Present_Mobile"]);

            if (reader["Permanent_Address"] != DBNull.Value)
                _Alumni.Permanent_Address = Convert.ToString(reader["Permanent_Address"]);

            if (reader["Permanent_ContactNo"] != DBNull.Value)
                _Alumni.Permanent_ContactNo = Convert.ToString(reader["Permanent_ContactNo"]);

            if (reader["Permanent_Mobile"] != DBNull.Value)
                _Alumni.Permanent_Mobile = Convert.ToString(reader["Permanent_Mobile"]);

            if (reader["Job_Office"] != DBNull.Value)
                _Alumni.Job_Office = Convert.ToString(reader["Job_Office"]);

            if (reader["JobOffice_PhnNo"] != DBNull.Value)
                _Alumni.JobOffice_PhnNo = Convert.ToString(reader["JobOffice_PhnNo"]);


            if (reader["Job_Location"] != DBNull.Value)
                _Alumni.Job_Location = Convert.ToString(reader["Job_Location"]);

            if (reader["Job_Experience"] != DBNull.Value)
                _Alumni.Job_Experience = Convert.ToString(reader["Job_Experience"]);

            if (reader["EMail_Address"] != DBNull.Value)
                _Alumni.EMail_Address = Convert.ToString(reader["EMail_Address"]);


            if (reader["Father_Name"] != DBNull.Value)
                _Alumni.Father_Name = Convert.ToString(reader["Father_Name"]);

            if (reader["Father_Occupation"] != DBNull.Value)
                _Alumni.Father_Occupation = Convert.ToString(reader["Father_Occupation"]);

            if (reader["Mother_Name"] != DBNull.Value)
                _Alumni.Mother_Name = Convert.ToString(reader["Mother_Name"]);

            if (reader["Mother_Occupation"] != DBNull.Value)
                _Alumni.Mother_Occupation = Convert.ToString(reader["Mother_Occupation"]);

            if (reader["Marital_Status"] != DBNull.Value)
                _Alumni.Marital_Status = Convert.ToString(reader["Marital_Status"]);

            if (reader["Spouse"] != DBNull.Value)
                _Alumni.Spouse = Convert.ToString(reader["Spouse"]);

            if (reader["Child_dtl"] != DBNull.Value)
                _Alumni.Child_dtl = Convert.ToString(reader["Child_dtl"]);

            if (reader["Religion"] != DBNull.Value)
                _Alumni.Religion = Convert.ToString(reader["Religion"]);

            if (reader["Blood_Group"] != DBNull.Value)
                _Alumni.Blood_Group = Convert.ToString(reader["Blood_Group"]);


            if (reader["PictureLocation"] != DBNull.Value)
                _Alumni.PictureLocation = Convert.ToString(reader["PictureLocation"]);

            if (reader["Date_Birth"] != DBNull.Value)
                _Alumni.Date_Birth = Convert.ToDateTime(reader["Date_Birth"]);

            if (reader["Posting_Date"] != DBNull.Value)
                _Alumni.Posting_Date = Convert.ToDateTime(reader["Posting_Date"]);

            if (reader["InsertionTime"] != DBNull.Value)
                _Alumni.InsertionTime = Convert.ToDateTime(reader["InsertionTime"]);

            if (reader["UpdateTime"] != DBNull.Value)
                _Alumni.UpdateTime = Convert.ToDateTime(reader["UpdateTime"]);

            if (reader["UserID"] != DBNull.Value)
                _Alumni.UserID = Convert.ToInt32(reader["UserID"]);

            if (reader["UpdateUser"] != DBNull.Value)
                _Alumni.UpdateUser = Convert.ToInt32(reader["UpdateUser"]);


            if (reader["Confirmation"] != DBNull.Value)
                _Alumni.Confirmation = Convert.ToInt32(reader["Confirmation"]);
        }

        public List<Alumni> LoadAlumni_GetAll()
        {
            try
            {
                List<Alumni> AlumniList = new List<Alumni>();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("Alumni_StdInfo_GetAll", CommandType.StoredProcedure);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    Alumni oAlumni = new Alumni();
                    BuildEntityAll(oDbDataReader, oAlumni);
                    AlumniList.Add(oAlumni);
                }
                oDbDataReader.Close();
                return AlumniList;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<Alumni> Alumni_GetAll()
        {
            try
            {
                List<Alumni> AlumniList = new List<Alumni>();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("Alumni_GetAll", CommandType.StoredProcedure);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    Alumni oAlumni = new Alumni();
                    BuildEntityAll(oDbDataReader, oAlumni);
                    AlumniList.Add(oAlumni);
                }
                oDbDataReader.Close();
                return AlumniList;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<Alumni> LoadAlumni_ByPartialName(string PartialName)
        {
            try
            {
                List<Alumni> AlumniList = new List<Alumni>();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("Alumni_byName", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@PartialName", DbType.String, PartialName);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    Alumni oAlumni = new Alumni();
                    BuildEntityAll(oDbDataReader, oAlumni);
                    AlumniList.Add(oAlumni);
                }
                oDbDataReader.Close();
                return AlumniList;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
       

        public int Alumni_Delete(int Sl)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("Alumni_StdDelete", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@Sl", DbType.Int32, Sl);
                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



        private void AddParameter(DbCommand oDbCommand, string parameterName, DbType dbType, object value)
        {
            oDbCommand.Parameters.Add(DbProviderHelper.CreateParameter(parameterName, dbType, value));
        }

        public Alumni Get_AlumniInfoID(int Sl)
        {
            try
            {
                Alumni objAlumni = new Alumni();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("Alumni_StdInfo_GetById", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@Sl", DbType.Int32, Sl);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    BuildEntityAll(oDbDataReader, objAlumni);
                }
                oDbDataReader.Close();
                return objAlumni;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }




        public DataTable AlumniInfo_GetAll()
        {
            DataTable dtUser = null;
            DbDataReader oDbDataReader = null;
            try
            {
                dtUser = new DataTable();

                DbCommand oDbCommand = DbProviderHelper.CreateCommand("Alumni_StdInfo_GetAll", CommandType.StoredProcedure);
                oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                dtUser.Load(oDbDataReader);
                oDbDataReader.Close();
                return dtUser;
            }
            catch (Exception ex)
            {
                throw ex;
            }

            finally
            {
                dtUser.Dispose();
                oDbDataReader.Dispose();
            }
        }



        public int Add_Alumni(Alumni _Alumni)
        {
            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("Add_Alumni", CommandType.StoredProcedure);


                if (_Alumni.Name != null)
                    AddParameter(oDbCommand, "@Name", DbType.String, _Alumni.Name);
                else
                    AddParameter(oDbCommand, "@Name", DbType.String, DBNull.Value);



                if (_Alumni.Graduation_ID >= 0)
                    AddParameter(oDbCommand, "@Graduation_ID", DbType.Int32, _Alumni.Graduation_ID);
                else
                    AddParameter(oDbCommand, "@Graduation_ID", DbType.Int32, DBNull.Value);


                if (_Alumni.GraduationFacultyID >= 0)
                    AddParameter(oDbCommand, "@GraduationFacultyID", DbType.Int32, _Alumni.GraduationFacultyID);
                else
                    AddParameter(oDbCommand, "@GraduationFacultyID", DbType.Int32, DBNull.Value);

                if (_Alumni.GraShiftID >= 0)
                    AddParameter(oDbCommand, "@GraShiftID", DbType.Int32, _Alumni.GraShiftID);
                else
                    AddParameter(oDbCommand, "@GraShiftID", DbType.Int32, DBNull.Value);

                if (_Alumni.GraTypesID >= 0)
                    AddParameter(oDbCommand, "@GraTypesID", DbType.Int32, _Alumni.GraTypesID);
                else
                    AddParameter(oDbCommand, "@GraTypesID", DbType.Int32, DBNull.Value);

                if (_Alumni.GraSubj_ID >= 0)
                    AddParameter(oDbCommand, "@GraSubj_ID", DbType.Int32, _Alumni.GraSubj_ID);
                else
                    AddParameter(oDbCommand, "@GraSubj_ID", DbType.Int32, DBNull.Value);

                if (_Alumni.SemisterID_Graduate >= 0)
                    AddParameter(oDbCommand, "@SemisterID_Graduate", DbType.Int32, _Alumni.SemisterID_Graduate);
                else
                    AddParameter(oDbCommand, "@SemisterID_Graduate", DbType.Int32, DBNull.Value);


                if (_Alumni.PassingMonth_Graguate != null)
                    AddParameter(oDbCommand, "@PassingMonth_Graguate", DbType.String, _Alumni.PassingMonth_Graguate);
                else
                    AddParameter(oDbCommand, "@PassingMonth_Graguate", DbType.String, DBNull.Value);

                if (_Alumni.PassingYear_Graguate != null)
                    AddParameter(oDbCommand, "@PassingYear_Graguate", DbType.String, _Alumni.PassingYear_Graguate);
                else
                    AddParameter(oDbCommand, "@PassingYear_Graguate", DbType.String, DBNull.Value);





                if (_Alumni.UnderGraduation_ID >= 0)
                    AddParameter(oDbCommand, "@UnderGraduation_ID", DbType.Int32, _Alumni.UnderGraduation_ID);
                else
                    AddParameter(oDbCommand, "@UnderGraduation_ID", DbType.Int32, DBNull.Value);

                if (_Alumni.UnderGraduationFacultyID >= 0)
                    AddParameter(oDbCommand, "@UnderGraduationFacultyID", DbType.Int32, _Alumni.UnderGraduationFacultyID);
                else
                    AddParameter(oDbCommand, "@UnderGraduationFacultyID", DbType.Int32, DBNull.Value);

                if (_Alumni.UnderGraSubj_ID >= 0)
                    AddParameter(oDbCommand, "@UnderGraSubj_ID", DbType.Int32, _Alumni.UnderGraSubj_ID);
                else
                    AddParameter(oDbCommand, "@UnderGraSubj_ID", DbType.Int32, DBNull.Value);


                if (_Alumni.UndrGraShiftID >= 0)
                    AddParameter(oDbCommand, "@UndrGraShiftID", DbType.Int32, _Alumni.UndrGraShiftID);
                else
                    AddParameter(oDbCommand, "@UndrGraShiftID", DbType.Int32, DBNull.Value);

                if (_Alumni.UndrGraTypesID >= 0)
                    AddParameter(oDbCommand, "@UndrGraTypesID", DbType.Int32, _Alumni.UndrGraTypesID);
                else
                    AddParameter(oDbCommand, "@UndrGraTypesID", DbType.Int32, DBNull.Value);


                if (_Alumni.SemisterID_UnderGraduate >= 0)
                    AddParameter(oDbCommand, "@SemisterID_UnderGraduate", DbType.Int32, _Alumni.SemisterID_UnderGraduate);
                else
                    AddParameter(oDbCommand, "@SemisterID_UnderGraduate", DbType.Int32, DBNull.Value);



                if (_Alumni.PassingMonth_UnderGraduate != null)
                    AddParameter(oDbCommand, "@PassingMonth_UnderGraduate", DbType.String, _Alumni.PassingMonth_UnderGraduate);
                else
                    AddParameter(oDbCommand, "@PassingMonth_UnderGraduate", DbType.String, DBNull.Value);

                if (_Alumni.PassingYear_UnderGraduate != null)
                    AddParameter(oDbCommand, "@PassingYear_UnderGraduate", DbType.String, _Alumni.PassingYear_UnderGraduate);
                else
                    AddParameter(oDbCommand, "@PassingYear_UnderGraduate", DbType.String, DBNull.Value);


                

                if (_Alumni.Occupation != null)
                    AddParameter(oDbCommand, "@Occupation", DbType.String, _Alumni.Occupation);
                else
                    AddParameter(oDbCommand, "@Occupation", DbType.String, DBNull.Value);

                if (_Alumni.Designation != null)
                    AddParameter(oDbCommand, "@Designation", DbType.String, _Alumni.Designation);
                else
                    AddParameter(oDbCommand, "@Designation", DbType.String, DBNull.Value);


                if (_Alumni.Present_Address != null)
                    AddParameter(oDbCommand, "@Present_Address", DbType.String, _Alumni.Present_Address);
                else
                    AddParameter(oDbCommand, "@Present_Address", DbType.String, DBNull.Value);

                if (_Alumni.Present_ContactNo != null)
                    AddParameter(oDbCommand, "@Present_ContactNo", DbType.String, _Alumni.Present_ContactNo);
                else
                    AddParameter(oDbCommand, "@Present_ContactNo", DbType.String, DBNull.Value);

                if (_Alumni.Present_Mobile != null)
                    AddParameter(oDbCommand, "@Present_Mobile", DbType.String, _Alumni.Present_Mobile);
                else
                    AddParameter(oDbCommand, "@Present_Mobile", DbType.String, DBNull.Value);

                if (_Alumni.Permanent_Address != null)
                    AddParameter(oDbCommand, "@Permanent_Address", DbType.String, _Alumni.Permanent_Address);
                else
                    AddParameter(oDbCommand, "@Permanent_Address", DbType.String, DBNull.Value);

                if (_Alumni.Permanent_ContactNo != null)
                    AddParameter(oDbCommand, "@Permanent_ContactNo", DbType.String, _Alumni.Permanent_ContactNo);
                else
                    AddParameter(oDbCommand, "@Permanent_ContactNo", DbType.String, DBNull.Value);



                if (_Alumni.Permanent_Mobile != null)
                    AddParameter(oDbCommand, "@Permanent_Mobile", DbType.String, _Alumni.Permanent_Mobile);
                else
                    AddParameter(oDbCommand, "@Permanent_Mobile", DbType.String, DBNull.Value);

                if (_Alumni.Job_Office != null)
                    AddParameter(oDbCommand, "@Job_Office", DbType.String, _Alumni.Job_Office);
                else
                    AddParameter(oDbCommand, "@Job_Office", DbType.String, DBNull.Value);


                if (_Alumni.JobOffice_PhnNo != null)
                    AddParameter(oDbCommand, "@JobOffice_PhnNo", DbType.String, _Alumni.JobOffice_PhnNo);
                else
                    AddParameter(oDbCommand, "@JobOffice_PhnNo", DbType.String, DBNull.Value);

                if (_Alumni.Job_Location != null)
                    AddParameter(oDbCommand, "@Job_Location", DbType.String, _Alumni.Job_Location);
                else
                    AddParameter(oDbCommand, "@Job_Location", DbType.String, DBNull.Value);

                if (_Alumni.Job_Experience != null)
                    AddParameter(oDbCommand, "@Job_Experience", DbType.String, _Alumni.Job_Experience);
                else
                    AddParameter(oDbCommand, "@Job_Experience", DbType.String, DBNull.Value);


                if (_Alumni.EMail_Address != null)
                    AddParameter(oDbCommand, "@EMail_Address", DbType.String, _Alumni.EMail_Address);
                else
                    AddParameter(oDbCommand, "@EMail_Address", DbType.String, DBNull.Value);

                if (_Alumni.Father_Name != null)
                    AddParameter(oDbCommand, "@Father_Name", DbType.String, _Alumni.Father_Name);
                else
                    AddParameter(oDbCommand, "@Father_Name", DbType.String, DBNull.Value);

                if (_Alumni.Father_Occupation != null)
                    AddParameter(oDbCommand, "@Father_Occupation", DbType.String, _Alumni.Father_Occupation);
                else
                    AddParameter(oDbCommand, "@Father_Occupation", DbType.String, DBNull.Value);

                if (_Alumni.Mother_Name != null)
                    AddParameter(oDbCommand, "@Mother_Name", DbType.String, _Alumni.Mother_Name);
                else
                    AddParameter(oDbCommand, "@Mother_Name", DbType.String, DBNull.Value);

                if (_Alumni.Mother_Occupation != null)
                    AddParameter(oDbCommand, "@Mother_Occupation", DbType.String, _Alumni.Mother_Occupation);
                else
                    AddParameter(oDbCommand, "@Mother_Occupation", DbType.String, DBNull.Value);


                if (_Alumni.Marital_Status != null)
                    AddParameter(oDbCommand, "@Marital_Status", DbType.String, _Alumni.Marital_Status);
                else
                    AddParameter(oDbCommand, "@Marital_Status", DbType.String, DBNull.Value);

                if (_Alumni.Child_dtl != null)
                    AddParameter(oDbCommand, "@Child_dtl", DbType.String, _Alumni.Child_dtl);
                else
                    AddParameter(oDbCommand, "@Child_dtl", DbType.String, DBNull.Value);


                

                if (_Alumni.Religion != null)
                    AddParameter(oDbCommand, "@Religion", DbType.String, _Alumni.Religion);
                else
                    AddParameter(oDbCommand, "@Religion", DbType.String, DBNull.Value);

                if (_Alumni.Blood_Group != null)
                    AddParameter(oDbCommand, "@Blood_Group", DbType.String, _Alumni.Blood_Group);
                else
                    AddParameter(oDbCommand, "@Blood_Group", DbType.String, DBNull.Value);


                if (_Alumni.Date_Birth != null)
                    AddParameter(oDbCommand, "@Date_Birth", DbType.DateTime, _Alumni.Date_Birth);
                else
                    AddParameter(oDbCommand, "@Date_Birth", DbType.DateTime, DBNull.Value);

                if (_Alumni.PictureLocation != null)
                    AddParameter(oDbCommand, "@PictureLocation", DbType.String, _Alumni.PictureLocation);
                else
                    AddParameter(oDbCommand, "@PictureLocation", DbType.String, DBNull.Value);

                if (_Alumni.Posting_Date != null)
                    AddParameter(oDbCommand, "@Posting_Date", DbType.String, _Alumni.Posting_Date);
                else
                    AddParameter(oDbCommand, "@Posting_Date", DbType.String, DBNull.Value);

                if (_Alumni.Confirmation >= 0)
                    AddParameter(oDbCommand, "@Confirmation", DbType.Int32, _Alumni.Confirmation);
                else
                    AddParameter(oDbCommand, "@Confirmation", DbType.Int32, DBNull.Value);

               


                if (_Alumni.InsertionTime != null)
                    AddParameter(oDbCommand, "@InsertionTime", DbType.DateTime, _Alumni.InsertionTime);
                else
                    AddParameter(oDbCommand, "@InsertionTime", DbType.DateTime, DBNull.Value);

                if (_Alumni.UserID >= 0)
                    AddParameter(oDbCommand, "@UserID", DbType.Int32, _Alumni.UserID);
                else
                    AddParameter(oDbCommand, "@UserID", DbType.Int32, DBNull.Value);
                
                if (_Alumni.Spouse != null)
                    AddParameter(oDbCommand, "@Spouse", DbType.String, _Alumni.Spouse);
                else
                    AddParameter(oDbCommand, "@Spouse", DbType.String, DBNull.Value);

                if (_Alumni.Priority != null)
                    AddParameter(oDbCommand, "@Priority", DbType.String, _Alumni.Priority);
                else
                    AddParameter(oDbCommand, "@Priority", DbType.String, DBNull.Value);




                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



       


        public int Update_Alumni(Alumni _Alumni)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("Alumni_Update", CommandType.StoredProcedure);

                if (_Alumni.Name != null)
                    AddParameter(oDbCommand, "@Name", DbType.String, _Alumni.Name);
                else
                    AddParameter(oDbCommand, "@Name", DbType.String, DBNull.Value);



                if (_Alumni.Graduation_ID >= 0)
                    AddParameter(oDbCommand, "@Graduation_ID", DbType.Int32, _Alumni.Graduation_ID);
                else
                    AddParameter(oDbCommand, "@Graduation_ID", DbType.Int32, DBNull.Value);


                if (_Alumni.GraduationFacultyID >= 0)
                    AddParameter(oDbCommand, "@GraduationFacultyID", DbType.Int32, _Alumni.GraduationFacultyID);
                else
                    AddParameter(oDbCommand, "@GraduationFacultyID", DbType.Int32, DBNull.Value);

                if (_Alumni.GraShiftID >= 0)
                    AddParameter(oDbCommand, "@GraShiftID", DbType.Int32, _Alumni.GraShiftID);
                else
                    AddParameter(oDbCommand, "@GraShiftID", DbType.Int32, DBNull.Value);

                if (_Alumni.GraTypesID >= 0)
                    AddParameter(oDbCommand, "@GraTypesID", DbType.Int32, _Alumni.GraTypesID);
                else
                    AddParameter(oDbCommand, "@GraTypesID", DbType.Int32, DBNull.Value);

                if (_Alumni.GraSubj_ID >= 0)
                    AddParameter(oDbCommand, "@GraSubj_ID", DbType.Int32, _Alumni.GraSubj_ID);
                else
                    AddParameter(oDbCommand, "@GraSubj_ID", DbType.Int32, DBNull.Value);

                if (_Alumni.SemisterID_Graduate >= 0)
                    AddParameter(oDbCommand, "@SemisterID_Graduate", DbType.Int32, _Alumni.SemisterID_Graduate);
                else
                    AddParameter(oDbCommand, "@SemisterID_Graduate", DbType.Int32, DBNull.Value);


                if (_Alumni.PassingMonth_Graguate != null)
                    AddParameter(oDbCommand, "@PassingMonth_Graguate", DbType.String, _Alumni.PassingMonth_Graguate);
                else
                    AddParameter(oDbCommand, "@PassingMonth_Graguate", DbType.String, DBNull.Value);

                if (_Alumni.PassingYear_Graguate != null)
                    AddParameter(oDbCommand, "@PassingYear_Graguate", DbType.String, _Alumni.PassingYear_Graguate);
                else
                    AddParameter(oDbCommand, "@PassingYear_Graguate", DbType.String, DBNull.Value);




                if (_Alumni.UnderGraduation_ID >= 0)
                    AddParameter(oDbCommand, "@UnderGraduation_ID", DbType.Int32, _Alumni.UnderGraduation_ID);
                else
                    AddParameter(oDbCommand, "@UnderGraduation_ID", DbType.Int32, DBNull.Value);


                if (_Alumni.UnderGraduationFacultyID >= 0)
                    AddParameter(oDbCommand, "@UnderGraduationFacultyID", DbType.Int32, _Alumni.UnderGraduationFacultyID);
                else
                    AddParameter(oDbCommand, "@UnderGraduationFacultyID", DbType.Int32, DBNull.Value);

                if (_Alumni.UnderGraSubj_ID >= 0)
                    AddParameter(oDbCommand, "@UnderGraSubj_ID", DbType.Int32, _Alumni.UnderGraSubj_ID);
                else
                    AddParameter(oDbCommand, "@UnderGraSubj_ID", DbType.Int32, DBNull.Value);


                if (_Alumni.UndrGraShiftID >= 0)
                    AddParameter(oDbCommand, "@UndrGraShiftID", DbType.Int32, _Alumni.UndrGraShiftID);
                else
                    AddParameter(oDbCommand, "@UndrGraShiftID", DbType.Int32, DBNull.Value);

                if (_Alumni.UndrGraTypesID >= 0)
                    AddParameter(oDbCommand, "@UndrGraTypesID", DbType.Int32, _Alumni.UndrGraTypesID);
                else
                    AddParameter(oDbCommand, "@UndrGraTypesID", DbType.Int32, DBNull.Value);


                if (_Alumni.SemisterID_UnderGraduate >= 0)
                    AddParameter(oDbCommand, "@SemisterID_UnderGraduate", DbType.Int32, _Alumni.SemisterID_UnderGraduate);
                else
                    AddParameter(oDbCommand, "@SemisterID_UnderGraduate", DbType.Int32, DBNull.Value);



                if (_Alumni.PassingMonth_UnderGraduate != null)
                    AddParameter(oDbCommand, "@PassingMonth_UnderGraduate", DbType.String, _Alumni.PassingMonth_UnderGraduate);
                else
                    AddParameter(oDbCommand, "@PassingMonth_UnderGraduate", DbType.String, DBNull.Value);

                if (_Alumni.PassingYear_UnderGraduate != null)
                    AddParameter(oDbCommand, "@PassingYear_UnderGraduate", DbType.String, _Alumni.PassingYear_UnderGraduate);
                else
                    AddParameter(oDbCommand, "@PassingYear_UnderGraduate", DbType.String, DBNull.Value);



                if (_Alumni.Occupation != null)
                    AddParameter(oDbCommand, "@Occupation", DbType.String, _Alumni.Occupation);
                else
                    AddParameter(oDbCommand, "@Occupation", DbType.String, DBNull.Value);

                if (_Alumni.Designation != null)
                    AddParameter(oDbCommand, "@Designation", DbType.String, _Alumni.Designation);
                else
                    AddParameter(oDbCommand, "@Designation", DbType.String, DBNull.Value);


                if (_Alumni.Present_Address != null)
                    AddParameter(oDbCommand, "@Present_Address", DbType.String, _Alumni.Present_Address);
                else
                    AddParameter(oDbCommand, "@Present_Address", DbType.String, DBNull.Value);

                if (_Alumni.Present_ContactNo != null)
                    AddParameter(oDbCommand, "@Present_ContactNo", DbType.String, _Alumni.Present_ContactNo);
                else
                    AddParameter(oDbCommand, "@Present_ContactNo", DbType.String, DBNull.Value);

                if (_Alumni.Present_Mobile != null)
                    AddParameter(oDbCommand, "@Present_Mobile", DbType.String, _Alumni.Present_Mobile);
                else
                    AddParameter(oDbCommand, "@Present_Mobile", DbType.String, DBNull.Value);

                if (_Alumni.Permanent_Address != null)
                    AddParameter(oDbCommand, "@Permanent_Address", DbType.String, _Alumni.Permanent_Address);
                else
                    AddParameter(oDbCommand, "@Permanent_Address", DbType.String, DBNull.Value);

                if (_Alumni.Permanent_ContactNo != null)
                    AddParameter(oDbCommand, "@Permanent_ContactNo", DbType.String, _Alumni.Permanent_ContactNo);
                else
                    AddParameter(oDbCommand, "@Permanent_ContactNo", DbType.String, DBNull.Value);



                if (_Alumni.Permanent_Mobile != null)
                    AddParameter(oDbCommand, "@Permanent_Mobile", DbType.String, _Alumni.Permanent_Mobile);
                else
                    AddParameter(oDbCommand, "@Permanent_Mobile", DbType.String, DBNull.Value);

                if (_Alumni.Job_Office != null)
                    AddParameter(oDbCommand, "@Job_Office", DbType.String, _Alumni.Job_Office);
                else
                    AddParameter(oDbCommand, "@Job_Office", DbType.String, DBNull.Value);


                if (_Alumni.JobOffice_PhnNo != null)
                    AddParameter(oDbCommand, "@JobOffice_PhnNo", DbType.String, _Alumni.JobOffice_PhnNo);
                else
                    AddParameter(oDbCommand, "@JobOffice_PhnNo", DbType.String, DBNull.Value);

                if (_Alumni.Job_Location != null)
                    AddParameter(oDbCommand, "@Job_Location", DbType.String, _Alumni.Job_Location);
                else
                    AddParameter(oDbCommand, "@Job_Location", DbType.String, DBNull.Value);

                if (_Alumni.Job_Experience != null)
                    AddParameter(oDbCommand, "@Job_Experience", DbType.String, _Alumni.Job_Experience);
                else
                    AddParameter(oDbCommand, "@Job_Experience", DbType.String, DBNull.Value);


                if (_Alumni.EMail_Address != null)
                    AddParameter(oDbCommand, "@EMail_Address", DbType.String, _Alumni.EMail_Address);
                else
                    AddParameter(oDbCommand, "@EMail_Address", DbType.String, DBNull.Value);

                if (_Alumni.Father_Name != null)
                    AddParameter(oDbCommand, "@Father_Name", DbType.String, _Alumni.Father_Name);
                else
                    AddParameter(oDbCommand, "@Father_Name", DbType.String, DBNull.Value);

                if (_Alumni.Father_Occupation != null)
                    AddParameter(oDbCommand, "@Father_Occupation", DbType.String, _Alumni.Father_Occupation);
                else
                    AddParameter(oDbCommand, "@Father_Occupation", DbType.String, DBNull.Value);

                if (_Alumni.Mother_Name != null)
                    AddParameter(oDbCommand, "@Mother_Name", DbType.String, _Alumni.Mother_Name);
                else
                    AddParameter(oDbCommand, "@Mother_Name", DbType.String, DBNull.Value);

                if (_Alumni.Mother_Occupation != null)
                    AddParameter(oDbCommand, "@Mother_Occupation", DbType.String, _Alumni.Mother_Occupation);
                else
                    AddParameter(oDbCommand, "@Mother_Occupation", DbType.String, DBNull.Value);


                if (_Alumni.Marital_Status != null)
                    AddParameter(oDbCommand, "@Marital_Status", DbType.String, _Alumni.Marital_Status);
                else
                    AddParameter(oDbCommand, "@Marital_Status", DbType.String, DBNull.Value);

                if (_Alumni.Child_dtl != null)
                    AddParameter(oDbCommand, "@Child_dtl", DbType.String, _Alumni.Child_dtl);
                else
                    AddParameter(oDbCommand, "@Child_dtl", DbType.String, DBNull.Value);


                if (_Alumni.Spouse != null)
                    AddParameter(oDbCommand, "@Spouse", DbType.String, _Alumni.Spouse);
                else
                    AddParameter(oDbCommand, "@Spouse", DbType.String, DBNull.Value);

                if (_Alumni.Religion != null)
                    AddParameter(oDbCommand, "@Religion", DbType.String, _Alumni.Religion);
                else
                    AddParameter(oDbCommand, "@Religion", DbType.String, DBNull.Value);

                if (_Alumni.Blood_Group != null)
                    AddParameter(oDbCommand, "@Blood_Group", DbType.String, _Alumni.Blood_Group);
                else
                    AddParameter(oDbCommand, "@Blood_Group", DbType.String, DBNull.Value);


                if (_Alumni.Date_Birth != null)
                    AddParameter(oDbCommand, "@Date_Birth", DbType.DateTime, _Alumni.Date_Birth);
                else
                    AddParameter(oDbCommand, "@Date_Birth", DbType.DateTime, DBNull.Value);

                if (_Alumni.PictureLocation != null)
                    AddParameter(oDbCommand, "@PictureLocation", DbType.String, _Alumni.PictureLocation);
                else
                    AddParameter(oDbCommand, "@PictureLocation", DbType.String, DBNull.Value);

                if (_Alumni.Posting_Date != null)
                    AddParameter(oDbCommand, "@Posting_Date", DbType.String, _Alumni.Posting_Date);
                else
                    AddParameter(oDbCommand, "@Posting_Date", DbType.String, DBNull.Value);

                if (_Alumni.Confirmation >= 0)
                    AddParameter(oDbCommand, "@Confirmation", DbType.Int32, _Alumni.Confirmation);
                else
                    AddParameter(oDbCommand, "@Confirmation", DbType.Int32, DBNull.Value);

                if (_Alumni.Posting_Date != null)
                    AddParameter(oDbCommand, "@Posting_Date", DbType.DateTime, _Alumni.Posting_Date);
                else
                    AddParameter(oDbCommand, "@Posting_Date", DbType.DateTime, DBNull.Value);


                if (_Alumni.UpdateTime != null)
                    AddParameter(oDbCommand, "@UpdateTime", DbType.DateTime, _Alumni.UpdateTime);
                else
                    AddParameter(oDbCommand, "@UpdateTime", DbType.DateTime, DBNull.Value);

                if (_Alumni.UpdateUser >= 0)
                    AddParameter(oDbCommand, "@UpdateUser", DbType.Int32, _Alumni.UpdateUser);
                else
                    AddParameter(oDbCommand, "@UpdateUser", DbType.Int32, DBNull.Value);


                if (_Alumni.Priority != null)
                    AddParameter(oDbCommand, "@Priority", DbType.String, _Alumni.Priority);
                else
                    AddParameter(oDbCommand, "@Priority", DbType.String, DBNull.Value);




                AddParameter(oDbCommand, "@Sl", DbType.Int32, _Alumni.Sl);

                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        




        public List<Alumni> LoadAlumniArts_GetAll()
        {
            try
            {
                List<Alumni> AlumniList = new List<Alumni>();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("AlumniArts_Std_GetAll", CommandType.StoredProcedure);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    Alumni oAlumni = new Alumni();
                    BuildEntityAll(oDbDataReader, oAlumni);
                    AlumniList.Add(oAlumni);
                }
                oDbDataReader.Close();
                return AlumniList;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public List<Alumni> LoadAlumniBA_GetAll()
        {
            try
            {
                List<Alumni> AlumniList = new List<Alumni>();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("AlumniBusiness_Std_GetAll", CommandType.StoredProcedure);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    Alumni oAlumni = new Alumni();
                    BuildEntityAll(oDbDataReader, oAlumni);
                    AlumniList.Add(oAlumni);
                }
                oDbDataReader.Close();
                return AlumniList;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



        public List<Alumni> LoadAlumniEng_GetAll()
        {
            try
            {
                List<Alumni> AlumniList = new List<Alumni>();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("AlumniEng_Std_GetAll", CommandType.StoredProcedure);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    Alumni oAlumni = new Alumni();
                    BuildEntityAll(oDbDataReader, oAlumni);
                    AlumniList.Add(oAlumni);
                }
                oDbDataReader.Close();
                return AlumniList;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public List<Alumni> LoadAlumniLaw_GetAll()
        {
            try
            {
                List<Alumni> AlumniList = new List<Alumni>();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("AlumniLaw_Std_GetAll", CommandType.StoredProcedure);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    Alumni oAlumni = new Alumni();
                    BuildEntityAll(oDbDataReader, oAlumni);
                    AlumniList.Add(oAlumni);
                }
                oDbDataReader.Close();
                return AlumniList;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



        public List<Alumni> LoadAlumniUG_GetAll()
        {
            try
            {
                List<Alumni> AlumniList = new List<Alumni>();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("AlumniUG_Std_GetAll", CommandType.StoredProcedure);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    Alumni oAlumni = new Alumni();
                    BuildEntityAll(oDbDataReader, oAlumni);
                    AlumniList.Add(oAlumni);
                }
                oDbDataReader.Close();
                return AlumniList;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public List<Alumni> LoadAlumniGr_GetAll()
        {
            try
            {
                List<Alumni> AlumniList = new List<Alumni>();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("AlumniGr_Std_GetAll", CommandType.StoredProcedure);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    Alumni oAlumni = new Alumni();
                    BuildEntityAll(oDbDataReader, oAlumni);
                    AlumniList.Add(oAlumni);
                }
                oDbDataReader.Close();
                return AlumniList;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



        public DataTable Alumni_Search(string storeProcedure, string Name, int Faculty, int Dept)
        {
            DataTable table = new DataTable();
            try
            {
                // DbConnection conn_st=ge;
                DbCommand command = DbProviderHelper.CreateCommand(storeProcedure, CommandType.StoredProcedure);
                AddParameter(command, "@Name", DbType.String, Name);
                AddParameter(command, "@FacultyID", DbType.Int32, Faculty);
                AddParameter(command, "@DepartmentID", DbType.Int32, Dept);
                
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

       
    }
}
