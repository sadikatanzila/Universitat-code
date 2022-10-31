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
   public class HR_CandidateDAL
    {
        private void BuildEntityAll(DbDataReader reader, HR_Candidate _HR_Candidate)
        {

            _HR_Candidate.CandidateSL = Convert.ToInt32(reader["CandidateSL"]);

            if (reader["CandidateNID"] != DBNull.Value)
                _HR_Candidate.CandidateNID = Convert.ToString(reader["CandidateNID"]);

            if (reader["TrackingNo"] != DBNull.Value)
                _HR_Candidate.TrackingNo = Convert.ToString(reader["TrackingNo"]);

           /* if (reader["JobCircular_ID"] != DBNull.Value)
                _HR_Candidate.JobCircular_ID = Convert.ToInt32(reader["JobCircular_ID"]);
            * */

            if (reader["Name"] != DBNull.Value)
                _HR_Candidate.Name = Convert.ToString(reader["Name"]);

            if (reader["Birth_Date"] != DBNull.Value)
                _HR_Candidate.Birth_Date = Convert.ToDateTime(reader["Birth_Date"]);

            if (reader["Mobile"] != DBNull.Value)
                _HR_Candidate.Mobile = Convert.ToString(reader["Mobile"]);

            if (reader["Phone_Number"] != DBNull.Value)
                _HR_Candidate.Phone_Number = Convert.ToString(reader["Phone_Number"]);

            if (reader["Gardian"] != DBNull.Value)
                _HR_Candidate.Gardian = Convert.ToString(reader["Gardian"]);

            if (reader["Mother"] != DBNull.Value)
                _HR_Candidate.Mother = Convert.ToString(reader["Mother"]);

            if (reader["GenderID"] != DBNull.Value)
                _HR_Candidate.GenderID = Convert.ToInt32(reader["GenderID"]);

            if (reader["Nationality"] != DBNull.Value)
                _HR_Candidate.Nationality = Convert.ToInt32(reader["Nationality"]);

            if (reader["Gender"] != DBNull.Value)
                _HR_Candidate.Gender = Convert.ToString(reader["Gender"]);
                     
            if (reader["Religion"] != DBNull.Value)
                _HR_Candidate.Religion = Convert.ToInt32(reader["Religion"]);

            if (reader["Maritial"] != DBNull.Value)
                _HR_Candidate.Maritial = Convert.ToInt32(reader["Maritial"]);

            if (reader["P_Address"] != DBNull.Value)
                _HR_Candidate.P_Address = Convert.ToString(reader["P_Address"]);

            if (reader["Per_Address"] != DBNull.Value)
                _HR_Candidate.Per_Address = Convert.ToString(reader["Per_Address"]);


            if (reader["E_Mail"] != DBNull.Value)
                _HR_Candidate.E_Mail = Convert.ToString(reader["E_Mail"]);

            if (reader["DepatmentID"] != DBNull.Value)
                _HR_Candidate.DepatmentID = Convert.ToInt32(reader["DepatmentID"]);

            if (reader["Job_Type"] != DBNull.Value)
                _HR_Candidate.Job_Type = Convert.ToString(reader["Job_Type"]);

            if (reader["JobCat_Id"] != DBNull.Value)
                _HR_Candidate.JobCat_Id = Convert.ToInt32(reader["JobCat_Id"]);


            if (reader["JobType_Id"] != DBNull.Value)
                _HR_Candidate.JobType_Id = Convert.ToInt32(reader["JobType_Id"]);

            if (reader["Join_Date"] != DBNull.Value)
                _HR_Candidate.Join_Date = Convert.ToDateTime(reader["Join_Date"]);

            if (reader["Dept"] != DBNull.Value)
                _HR_Candidate.Dept = Convert.ToString(reader["Dept"]);
            
            if (reader["Password"] != DBNull.Value)
                _HR_Candidate.Password = Convert.ToString(reader["Password"]);

            if (reader["InsertionTime"] != DBNull.Value)
                _HR_Candidate.InsertionTime = Convert.ToDateTime(reader["InsertionTime"]);
        }

        public List<HR_Candidate> HR_Candidate_GetAll()
        {
            try
            {
                List<HR_Candidate> HR_CandidateList = new List<HR_Candidate>();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_Candidate_GetAll", CommandType.StoredProcedure);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    HR_Candidate oHR_Candidate = new HR_Candidate();
                    BuildEntityAll(oDbDataReader, oHR_Candidate);
                    HR_CandidateList.Add(oHR_Candidate);
                }
                oDbDataReader.Close();
                return HR_CandidateList;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int HR_Candidate_Delete(int CandidateSL)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_Candidate_Delete", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@CandidateSL", DbType.Int32, CandidateSL);
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

        public DataTable LoadHR_Candidate_GetAll()
        {
            DataTable dtUser = null;
            DbDataReader oDbDataReader = null;
            try
            {
                dtUser = new DataTable();

                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_Candidate_GetAll", CommandType.StoredProcedure);
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


        public int Add_HR_Candidate(HR_Candidate _HR_Candidate)
        {
            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("Add_HR_Candidate", CommandType.StoredProcedure);


                if (_HR_Candidate.CandidateNID != null)
                    AddParameter(oDbCommand, "@CandidateNID", DbType.String, _HR_Candidate.CandidateNID);
                else
                    AddParameter(oDbCommand, "@CandidateNID", DbType.String, DBNull.Value);

                if (_HR_Candidate.TrackingNo != null)
                    AddParameter(oDbCommand, "@TrackingNo", DbType.String, _HR_Candidate.TrackingNo);
                else
                    AddParameter(oDbCommand, "@TrackingNo", DbType.String, DBNull.Value);

               /* if (_HR_Candidate.JobCircular_ID >= 0)
                    AddParameter(oDbCommand, "@JobCircular_ID", DbType.Int32, _HR_Candidate.JobCircular_ID);
                else
                    AddParameter(oDbCommand, "@JobCircular_ID", DbType.Int32, DBNull.Value);
                */

                if (_HR_Candidate.Name != null)
                    AddParameter(oDbCommand, "@Name", DbType.String, _HR_Candidate.Name);
                else
                    AddParameter(oDbCommand, "@Name", DbType.String, DBNull.Value);

                if (_HR_Candidate.Birth_Date != null)
                    AddParameter(oDbCommand, "@Birth_Date", DbType.DateTime, _HR_Candidate.Birth_Date);
                else
                    AddParameter(oDbCommand, "@Birth_Date", DbType.DateTime, DBNull.Value);

                if (_HR_Candidate.Nationality >= 0)
                    AddParameter(oDbCommand, "@Nationality", DbType.Int32, _HR_Candidate.Nationality);
                else
                    AddParameter(oDbCommand, "@Nationality", DbType.Int32, DBNull.Value);

                if (_HR_Candidate.Mobile != null)
                    AddParameter(oDbCommand, "@Mobile", DbType.String, _HR_Candidate.Mobile);
                else
                    AddParameter(oDbCommand, "@Mobile", DbType.String, DBNull.Value);

                if (_HR_Candidate.Phone_Number != null)
                    AddParameter(oDbCommand, "@Phone_Number", DbType.String, _HR_Candidate.Phone_Number);
                else
                    AddParameter(oDbCommand, "@Phone_Number", DbType.String, DBNull.Value);

                if (_HR_Candidate.Gardian != null)
                    AddParameter(oDbCommand, "@Gardian", DbType.String, _HR_Candidate.Gardian);
                else
                    AddParameter(oDbCommand, "@Gardian", DbType.String, DBNull.Value);

                if (_HR_Candidate.Mother != null)
                    AddParameter(oDbCommand, "@Mother", DbType.String, _HR_Candidate.Mother);
                else
                    AddParameter(oDbCommand, "@Mother", DbType.String, DBNull.Value);


                if (_HR_Candidate.GenderID >= 0)
                    AddParameter(oDbCommand, "@GenderID", DbType.Int32, _HR_Candidate.GenderID);
                else
                    AddParameter(oDbCommand, "@GenderID", DbType.Int32, DBNull.Value);

                if (_HR_Candidate.Gender != null)
                    AddParameter(oDbCommand, "@Gender", DbType.String, _HR_Candidate.Gender);
                else
                    AddParameter(oDbCommand, "@Gender", DbType.String, DBNull.Value);


                if (_HR_Candidate.Religion >= 0)
                    AddParameter(oDbCommand, "@Religion", DbType.Int32, _HR_Candidate.Religion);
                else
                    AddParameter(oDbCommand, "@Religion", DbType.Int32, DBNull.Value);

                if (_HR_Candidate.Maritial >= 0)
                    AddParameter(oDbCommand, "@Maritial", DbType.Int32, _HR_Candidate.Maritial);
                else
                    AddParameter(oDbCommand, "@Maritial", DbType.Int32, DBNull.Value);

                if (_HR_Candidate.P_Address != null)
                    AddParameter(oDbCommand, "@P_Address", DbType.String, _HR_Candidate.P_Address);
                else
                    AddParameter(oDbCommand, "@P_Address", DbType.String, DBNull.Value);

                if (_HR_Candidate.Per_Address != null)
                    AddParameter(oDbCommand, "@Per_Address", DbType.String, _HR_Candidate.Per_Address);
                else
                    AddParameter(oDbCommand, "@Per_Address", DbType.String, DBNull.Value);


                if (_HR_Candidate.E_Mail != null)
                    AddParameter(oDbCommand, "@E_Mail", DbType.String, _HR_Candidate.E_Mail);
                else
                    AddParameter(oDbCommand, "@E_Mail", DbType.String, DBNull.Value);

                if (_HR_Candidate.DepatmentID >= 0)
                    AddParameter(oDbCommand, "@DepatmentID", DbType.Int32, _HR_Candidate.DepatmentID);
                else
                    AddParameter(oDbCommand, "@DepatmentID", DbType.Int32, DBNull.Value);


                if (_HR_Candidate.Job_Type != null)
                    AddParameter(oDbCommand, "@Job_Type", DbType.String, _HR_Candidate.Job_Type);
                else
                    AddParameter(oDbCommand, "@Job_Type", DbType.String, DBNull.Value);


                if (_HR_Candidate.JobCat_Id >= 0)
                    AddParameter(oDbCommand, "@JobCat_Id", DbType.Int32, _HR_Candidate.JobCat_Id);
                else
                    AddParameter(oDbCommand, "@JobCat_Id", DbType.Int32, DBNull.Value);

                if (_HR_Candidate.JobType_Id >= 0)
                    AddParameter(oDbCommand, "@JobType_Id", DbType.Int32, _HR_Candidate.JobType_Id);
                else
                    AddParameter(oDbCommand, "@JobType_Id", DbType.Int32, DBNull.Value);


                if (_HR_Candidate.Join_Date != null)
                    AddParameter(oDbCommand, "@Join_Date", DbType.DateTime, _HR_Candidate.Join_Date);
                else
                    AddParameter(oDbCommand, "@Join_Date", DbType.DateTime, DBNull.Value);                  

                if (_HR_Candidate.Dept != null)
                    AddParameter(oDbCommand, "@Dept", DbType.String, _HR_Candidate.Dept);
                else
                    AddParameter(oDbCommand, "@Dept", DbType.String, DBNull.Value);

                if (_HR_Candidate.Password != null)
                    AddParameter(oDbCommand, "@Password", DbType.String, _HR_Candidate.Password);
                else
                    AddParameter(oDbCommand, "@Password", DbType.String, DBNull.Value);

                if (_HR_Candidate.InsertionTime != null)
                    AddParameter(oDbCommand, "@InsertionTime", DbType.DateTime, _HR_Candidate.InsertionTime);
                else
                    AddParameter(oDbCommand, "@InsertionTime", DbType.DateTime, DBNull.Value);

                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



        public int Update_HR_Candidate(HR_Candidate _HR_Candidate)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_Candidate_Update", CommandType.StoredProcedure);

                if (_HR_Candidate.CandidateNID != null)
                    AddParameter(oDbCommand, "@CandidateNID", DbType.String, _HR_Candidate.CandidateNID);
                else
                    AddParameter(oDbCommand, "@CandidateNID", DbType.String, DBNull.Value);

                if (_HR_Candidate.TrackingNo != null)
                    AddParameter(oDbCommand, "@TrackingNo", DbType.String, _HR_Candidate.TrackingNo);
                else
                    AddParameter(oDbCommand, "@TrackingNo", DbType.String, DBNull.Value);

              /*  if (_HR_Candidate.JobCircular_ID >= 0)
                    AddParameter(oDbCommand, "@JobCircular_ID", DbType.Int32, _HR_Candidate.JobCircular_ID);
                else
                    AddParameter(oDbCommand, "@JobCircular_ID", DbType.Int32, DBNull.Value);
                */

                if (_HR_Candidate.Name != null)
                    AddParameter(oDbCommand, "@Name", DbType.String, _HR_Candidate.Name);
                else
                    AddParameter(oDbCommand, "@Name", DbType.String, DBNull.Value);

                if (_HR_Candidate.Birth_Date != null)
                    AddParameter(oDbCommand, "@Birth_Date", DbType.DateTime, _HR_Candidate.Birth_Date);
                else
                    AddParameter(oDbCommand, "@Birth_Date", DbType.DateTime, DBNull.Value);

                if (_HR_Candidate.Nationality >=0)
                    AddParameter(oDbCommand, "@Nationality", DbType.Int32, _HR_Candidate.Nationality);
                else
                    AddParameter(oDbCommand, "@Nationality", DbType.Int32, DBNull.Value);

                if (_HR_Candidate.Mobile != null)
                    AddParameter(oDbCommand, "@Mobile", DbType.String, _HR_Candidate.Mobile);
                else
                    AddParameter(oDbCommand, "@Mobile", DbType.String, DBNull.Value);

                if (_HR_Candidate.Phone_Number != null)
                    AddParameter(oDbCommand, "@Phone_Number", DbType.String, _HR_Candidate.Phone_Number);
                else
                    AddParameter(oDbCommand, "@Phone_Number", DbType.String, DBNull.Value);

                if (_HR_Candidate.Gardian != null)
                    AddParameter(oDbCommand, "@Gardian", DbType.String, _HR_Candidate.Gardian);
                else
                    AddParameter(oDbCommand, "@Gardian", DbType.String, DBNull.Value);


                if (_HR_Candidate.Mother != null)
                    AddParameter(oDbCommand, "@Mother", DbType.String, _HR_Candidate.Mother);
                else
                    AddParameter(oDbCommand, "@Mother", DbType.String, DBNull.Value);


                if (_HR_Candidate.GenderID >= 0)
                    AddParameter(oDbCommand, "@GenderID", DbType.Int32, _HR_Candidate.GenderID);
                else
                    AddParameter(oDbCommand, "@GenderID", DbType.Int32, DBNull.Value);

                if (_HR_Candidate.Gender != null)
                    AddParameter(oDbCommand, "@Gender", DbType.String, _HR_Candidate.Gender);
                else
                    AddParameter(oDbCommand, "@Gender", DbType.String, DBNull.Value);


                if (_HR_Candidate.Religion >= 0)
                    AddParameter(oDbCommand, "@Religion", DbType.Int32, _HR_Candidate.Religion);
                else
                    AddParameter(oDbCommand, "@Religion", DbType.Int32, DBNull.Value);

                if (_HR_Candidate.Maritial >= 0)
                    AddParameter(oDbCommand, "@Maritial", DbType.Int32, _HR_Candidate.Maritial);
                else
                    AddParameter(oDbCommand, "@Maritial", DbType.Int32, DBNull.Value);

                if (_HR_Candidate.P_Address != null)
                    AddParameter(oDbCommand, "@P_Address", DbType.String, _HR_Candidate.P_Address);
                else
                    AddParameter(oDbCommand, "@P_Address", DbType.String, DBNull.Value);

                if (_HR_Candidate.Per_Address != null)
                    AddParameter(oDbCommand, "@Per_Address", DbType.String, _HR_Candidate.Per_Address);
                else
                    AddParameter(oDbCommand, "@Per_Address", DbType.String, DBNull.Value);


                if (_HR_Candidate.E_Mail != null)
                    AddParameter(oDbCommand, "@E_Mail", DbType.String, _HR_Candidate.E_Mail);
                else
                    AddParameter(oDbCommand, "@E_Mail", DbType.String, DBNull.Value);

                if (_HR_Candidate.DepatmentID >= 0)
                    AddParameter(oDbCommand, "@DepatmentID", DbType.Int32, _HR_Candidate.DepatmentID);
                else
                    AddParameter(oDbCommand, "@DepatmentID", DbType.Int32, DBNull.Value);


                if (_HR_Candidate.Job_Type != null)
                    AddParameter(oDbCommand, "@Job_Type", DbType.String, _HR_Candidate.Job_Type);
                else
                    AddParameter(oDbCommand, "@Job_Type", DbType.String, DBNull.Value);


                if (_HR_Candidate.JobCat_Id >= 0)
                    AddParameter(oDbCommand, "@JobCat_Id", DbType.Int32, _HR_Candidate.JobCat_Id);
                else
                    AddParameter(oDbCommand, "@JobCat_Id", DbType.Int32, DBNull.Value);

                if (_HR_Candidate.JobType_Id >= 0)
                    AddParameter(oDbCommand, "@JobType_Id", DbType.Int32, _HR_Candidate.JobType_Id);
                else
                    AddParameter(oDbCommand, "@JobType_Id", DbType.Int32, DBNull.Value);


                if (_HR_Candidate.Join_Date != null)
                    AddParameter(oDbCommand, "@Join_Date", DbType.DateTime, _HR_Candidate.Join_Date);
                else
                    AddParameter(oDbCommand, "@Join_Date", DbType.DateTime, DBNull.Value);

                if (_HR_Candidate.Dept != null)
                    AddParameter(oDbCommand, "@Dept", DbType.String, _HR_Candidate.Dept);
                else
                    AddParameter(oDbCommand, "@Dept", DbType.String, DBNull.Value);

                if (_HR_Candidate.Password != null)
                    AddParameter(oDbCommand, "@Password", DbType.String, _HR_Candidate.Password);
                else
                    AddParameter(oDbCommand, "@Password", DbType.String, DBNull.Value);

                if (_HR_Candidate.InsertionTime != null)
                    AddParameter(oDbCommand, "@InsertionTime", DbType.DateTime, _HR_Candidate.InsertionTime);
                else
                    AddParameter(oDbCommand, "@InsertionTime", DbType.DateTime, DBNull.Value);




                AddParameter(oDbCommand, "@CandidateSL", DbType.Int32, _HR_Candidate.CandidateSL);

                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



        public HR_Candidate Get_HR_CandidateInfoID(int CandidateSL)
        {
            try
            {
                HR_Candidate objHR_Candidate = new HR_Candidate();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_Candidate_GetById", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@CandidateSL", DbType.Int32, CandidateSL);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    BuildEntityAll(oDbDataReader, objHR_Candidate);
                }
                oDbDataReader.Close();
                return objHR_Candidate;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



        public HR_Candidate Get_HR_CandidateInfo(string TrackingNo)
        {
            try
            {
                HR_Candidate objHR_Candidate = new HR_Candidate();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_Candidate_GetByTruckingNo", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@TrackingNo", DbType.String, TrackingNo);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    BuildEntityAll(oDbDataReader, objHR_Candidate);
                }
                oDbDataReader.Close();
                return objHR_Candidate;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



        public DataTable User_GetCandidateByTrucking(string TrackingNo, string Password)
        {
            DataTable dtUser = null;
            DbDataReader oDbDataReader = null;
            try
            {
                dtUser = new DataTable();

                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_CandidateIDbyTruckNoPassword", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@TrackingNo", DbType.String, TrackingNo);
                AddParameter(oDbCommand, "@Password", DbType.String, Password);
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

    }
}
