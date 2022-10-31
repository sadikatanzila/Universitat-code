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
  public  class HR_JobPostDAL
    {
        private void BuildEntity(DbDataReader reader, HR_JobPost _HR_JobPost)
        {
            _HR_JobPost.JobPost_ID = Convert.ToInt32(reader["JobPost_ID"]);


            if (reader["JobCircular_ID"] != DBNull.Value)
                _HR_JobPost.JobCircular_ID = Convert.ToInt32(reader["JobCircular_ID"]);


            if (reader["CircularNo"] != DBNull.Value)
                _HR_JobPost.CircularNo = Convert.ToString(reader["CircularNo"]);


            if (reader["Circular_IDGn"] != DBNull.Value)
                _HR_JobPost.Circular_IDGn = Convert.ToString(reader["Circular_IDGn"]);



            if (reader["Value"] != DBNull.Value)
                _HR_JobPost.Value = Convert.ToString(reader["Value"]);

            if (reader["IsActive"] != DBNull.Value)
                _HR_JobPost.IsActive = Convert.ToBoolean(reader["IsActive"]);



            if (reader["SubjectID"] != DBNull.Value)
                _HR_JobPost.SubjectID = Convert.ToInt32(reader["SubjectID"]);

            if (reader["Subject"] != DBNull.Value)
                _HR_JobPost.Subject = Convert.ToString(reader["Subject"]);


            if (reader["JobType_Id"] != DBNull.Value)
                _HR_JobPost.JobType_Id = Convert.ToInt32(reader["JobType_Id"]);

            if (reader["Job_Post"] != DBNull.Value)
                _HR_JobPost.Job_Post = Convert.ToString(reader["Job_Post"]);


            if (reader["DepartmentID"] != DBNull.Value)
                _HR_JobPost.DepartmentID = Convert.ToInt32(reader["DepartmentID"]);

            if (reader["Department"] != DBNull.Value)
                _HR_JobPost.Department = Convert.ToString(reader["Department"]);


            if (reader["JobCat_Id"] != DBNull.Value)
                _HR_JobPost.JobCat_Id = Convert.ToInt32(reader["JobCat_Id"]);

            if (reader["Category"] != DBNull.Value)
                _HR_JobPost.Category = Convert.ToString(reader["Category"]);






            if (reader["SemisterID"] != DBNull.Value)
                _HR_JobPost.SemisterID = Convert.ToInt32(reader["SemisterID"]);

            if (reader["Year"] != DBNull.Value)
                _HR_JobPost.Year = Convert.ToInt32(reader["Year"]);

            if (reader["SemisterName"] != DBNull.Value)
                _HR_JobPost.SemisterName = Convert.ToString(reader["SemisterName"]);






            if (reader["Start_Date"] != DBNull.Value)
                _HR_JobPost.Start_Date = Convert.ToDateTime(reader["Start_Date"]);

            if (reader["Deadline"] != DBNull.Value)
                _HR_JobPost.Deadline = Convert.ToDateTime(reader["Deadline"]);






            if (reader["Responsibility"] != DBNull.Value)
                _HR_JobPost.Responsibility = Convert.ToString(reader["Responsibility"]);

            if (reader["Nature"] != DBNull.Value)
                _HR_JobPost.Nature = Convert.ToString(reader["Nature"]);

            if (reader["Educational_Req"] != DBNull.Value)
                _HR_JobPost.Educational_Req = Convert.ToString(reader["Educational_Req"]);

            if (reader["JobTime_Experience"] != DBNull.Value)
                _HR_JobPost.JobTime_Experience = Convert.ToString(reader["JobTime_Experience"]);

            if (reader["Working_Experience"] != DBNull.Value)
                _HR_JobPost.Working_Experience = Convert.ToString(reader["Working_Experience"]);

            if (reader["Additional_Req"] != DBNull.Value)
                _HR_JobPost.Additional_Req = Convert.ToString(reader["Additional_Req"]);

            if (reader["Job_Location"] != DBNull.Value)
                _HR_JobPost.Job_Location = Convert.ToString(reader["Job_Location"]);

            if (reader["Salary_Range"] != DBNull.Value)
                _HR_JobPost.Salary_Range = Convert.ToString(reader["Salary_Range"]);




            if (reader["CreateDate"] != DBNull.Value)
                _HR_JobPost.CreateDate = Convert.ToDateTime(reader["CreateDate"]);

            if (reader["UpdateDate"] != DBNull.Value)
                _HR_JobPost.UpdateDate = Convert.ToDateTime(reader["UpdateDate"]);

            if (reader["CreatedBy"] != DBNull.Value)
                _HR_JobPost.CreatedBy = Convert.ToInt32(reader["CreatedBy"]);

            if (reader["UpdatedBy"] != DBNull.Value)
                _HR_JobPost.UpdatedBy = Convert.ToInt32(reader["UpdatedBy"]);


        }


        private void AddParameter(DbCommand oDbCommand, string parameterName, DbType dbType, object value)
        {
            oDbCommand.Parameters.Add(DbProviderHelper.CreateParameter(parameterName, dbType, value));
        }


        public List<HR_JobPost> HR_JobPost_GetAll()
        {
            try
            {
                List<HR_JobPost> lstHR_JobPost = new List<HR_JobPost>();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_JobPost_GetAll", CommandType.StoredProcedure);
                DbDataReader reader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (reader.Read())
                {
                    HR_JobPost oHR_JobPost = new HR_JobPost();
                    BuildEntity(reader, oHR_JobPost);
                    lstHR_JobPost.Add(oHR_JobPost);
                }
                reader.Close();
                return lstHR_JobPost;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public DataTable HR_JobPost_GetAllCurrent(string storeProcedure, DateTime Current_Time)
        {
            DataTable table = new DataTable();
            try
            {
                // DbConnection conn_st=ge;
                DbCommand command = DbProviderHelper.CreateCommand(storeProcedure, CommandType.StoredProcedure);
                AddParameter(command, "@Current_Time", DbType.DateTime, Current_Time);
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


        public DataTable HR_PrevJobCircular_GetAll(string storeProcedure, DateTime Current_Time)
        {
            DataTable table = new DataTable();
            try
            {
                // DbConnection conn_st=ge;
                DbCommand command = DbProviderHelper.CreateCommand(storeProcedure, CommandType.StoredProcedure);
                AddParameter(command, "@Current_Time", DbType.DateTime, Current_Time);
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

        public DataTable AppliedList_GetAll(string storeProcedure, DateTime Current_Time, DateTime fDate, DateTime tDate, int JobCat_Id,
            int DepartmentID, int JobType_Id, int SubjectID, int JobCircular_ID)
        {
            DataTable table = new DataTable();
            try
            {
                // DbConnection conn_st=ge;
                DbCommand command = DbProviderHelper.CreateCommand(storeProcedure, CommandType.StoredProcedure);


                if (Current_Time != null)
                    AddParameter(command, "@Current_Time", DbType.DateTime, Current_Time);
                else
                    AddParameter(command, "@Current_Time", DbType.DateTime, DBNull.Value);


                if (fDate != null)
                    AddParameter(command, "@fDate", DbType.DateTime, fDate);
                else
                    AddParameter(command, "@fDate", DbType.DateTime, DBNull.Value);

                if (tDate != null)
                    AddParameter(command, "@tDate", DbType.DateTime, tDate);
                else
                    AddParameter(command, "@tDate", DbType.DateTime, DBNull.Value);

                if (JobCat_Id != null)
                    AddParameter(command, "@JobCat_Id", DbType.Int32, JobCat_Id);
                else
                    AddParameter(command, "@JobCat_Id", DbType.Int32, DBNull.Value);

                if (DepartmentID != null)
                    AddParameter(command, "@DepartmentID", DbType.Int32, DepartmentID);
                else
                    AddParameter(command, "@DepartmentID", DbType.Int32, DBNull.Value);

                if (JobType_Id != null)
                    AddParameter(command, "@JobType_Id", DbType.Int32, JobType_Id);
                else
                    AddParameter(command, "@JobType_Id", DbType.Int32, DBNull.Value);

                if (SubjectID != null)
                    AddParameter(command, "@SubjectID", DbType.Int32, SubjectID);
                else
                    AddParameter(command, "@SubjectID", DbType.Int32, DBNull.Value);

                if (JobCircular_ID != null)
                    AddParameter(command, "@JobCircular_ID", DbType.Int32, JobCircular_ID);
                else
                    AddParameter(command, "@JobCircular_ID", DbType.Int32, DBNull.Value);


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

        public int HR_JobPost_Add(HR_JobPost _HR_JobPost)
        {
            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_JobPost_Create", CommandType.StoredProcedure);

                if (_HR_JobPost.JobCircular_ID != null)
                    AddParameter(oDbCommand, "@JobCircular_ID", DbType.Int32, _HR_JobPost.JobCircular_ID);
                else
                    AddParameter(oDbCommand, "@JobCircular_ID", DbType.Int32, DBNull.Value);
                
                
                if (_HR_JobPost.IsActive.HasValue)
                    AddParameter(oDbCommand, "@IsActive", DbType.Boolean, _HR_JobPost.IsActive);
                else
                    AddParameter(oDbCommand, "@IsActive", DbType.Boolean, DBNull.Value);

                if (_HR_JobPost.JobType_Id != null)
                    AddParameter(oDbCommand, "@JobType_Id", DbType.Int32, _HR_JobPost.JobType_Id);
                else
                    AddParameter(oDbCommand, "@JobType_Id", DbType.Int32, DBNull.Value);

                if (_HR_JobPost.Start_Date != null)
                    AddParameter(oDbCommand, "@Start_Date", DbType.DateTime, _HR_JobPost.Start_Date);
                else
                    AddParameter(oDbCommand, "@Start_Date", DbType.DateTime, DBNull.Value);

                if (_HR_JobPost.Deadline != null)
                    AddParameter(oDbCommand, "@Deadline", DbType.DateTime, _HR_JobPost.Deadline);
                else
                    AddParameter(oDbCommand, "@Deadline", DbType.DateTime, DBNull.Value);

                if (_HR_JobPost.CreateDate != null)
                    AddParameter(oDbCommand, "@CreateDate", DbType.DateTime, _HR_JobPost.CreateDate);
                else
                    AddParameter(oDbCommand, "@CreateDate", DbType.DateTime, DBNull.Value);

                if (_HR_JobPost.CreatedBy != null)
                    AddParameter(oDbCommand, "@CreatedBy", DbType.Int32, _HR_JobPost.CreatedBy);
                else
                    AddParameter(oDbCommand, "@CreatedBy", DbType.Int32, DBNull.Value);

                if (_HR_JobPost.SubjectID != null)
                    AddParameter(oDbCommand, "@SubjectID", DbType.Int32, _HR_JobPost.SubjectID);
                else
                    AddParameter(oDbCommand, "@SubjectID", DbType.Int32, DBNull.Value);


                if (_HR_JobPost.SemisterID != null)
                    AddParameter(oDbCommand, "@SemisterID", DbType.Int32, _HR_JobPost.SemisterID);
                else
                    AddParameter(oDbCommand, "@SemisterID", DbType.Int32, DBNull.Value);

                if (_HR_JobPost.Year != null)
                    AddParameter(oDbCommand, "@Year", DbType.Int32, _HR_JobPost.Year);
                else
                    AddParameter(oDbCommand, "@Year", DbType.Int32, DBNull.Value);




                if (_HR_JobPost.Responsibility != null)
                    AddParameter(oDbCommand, "@Responsibility", DbType.String, _HR_JobPost.Responsibility);
                else
                    AddParameter(oDbCommand, "@Responsibility", DbType.String, DBNull.Value);


                if (_HR_JobPost.Nature != null)
                    AddParameter(oDbCommand, "@Nature", DbType.String, _HR_JobPost.Nature);
                else
                    AddParameter(oDbCommand, "@Nature", DbType.String, DBNull.Value);

                if (_HR_JobPost.Educational_Req != null)
                    AddParameter(oDbCommand, "@Educational_Req", DbType.String, _HR_JobPost.Educational_Req);
                else
                    AddParameter(oDbCommand, "@Educational_Req", DbType.String, DBNull.Value);


                if (_HR_JobPost.JobTime_Experience != null)
                    AddParameter(oDbCommand, "@JobTime_Experience", DbType.String, _HR_JobPost.JobTime_Experience);
                else
                    AddParameter(oDbCommand, "@JobTime_Experience", DbType.String, DBNull.Value);



                if (_HR_JobPost.Working_Experience != null)
                    AddParameter(oDbCommand, "@Working_Experience", DbType.String, _HR_JobPost.Working_Experience);
                else
                    AddParameter(oDbCommand, "@Working_Experience", DbType.String, DBNull.Value);



                if (_HR_JobPost.Additional_Req != null)
                    AddParameter(oDbCommand, "@Additional_Req", DbType.String, _HR_JobPost.Additional_Req);
                else
                    AddParameter(oDbCommand, "@Additional_Req", DbType.String, DBNull.Value);


                if (_HR_JobPost.Job_Location != null)
                    AddParameter(oDbCommand, "@Job_Location", DbType.String, _HR_JobPost.Job_Location);
                else
                    AddParameter(oDbCommand, "@Job_Location", DbType.String, DBNull.Value);


                if (_HR_JobPost.Salary_Range != null)
                    AddParameter(oDbCommand, "@Salary_Range", DbType.String, _HR_JobPost.Salary_Range);
                else
                    AddParameter(oDbCommand, "@Salary_Range", DbType.String, DBNull.Value);

                if (_HR_JobPost.Value != null)
                    AddParameter(oDbCommand, "@Value", DbType.String, _HR_JobPost.Value);
                else
                    AddParameter(oDbCommand, "@Value", DbType.String, DBNull.Value);


                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }









        public int HR_JobPost_Update(HR_JobPost _HR_JobPost)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_JobPost_Update", CommandType.StoredProcedure);

                AddParameter(oDbCommand, "@JobPost_ID", DbType.Int32, _HR_JobPost.JobPost_ID);

                if (_HR_JobPost.JobCircular_ID != null)
                    AddParameter(oDbCommand, "@JobCircular_ID", DbType.Int32, _HR_JobPost.JobCircular_ID);
                else
                    AddParameter(oDbCommand, "@JobCircular_ID", DbType.Int32, DBNull.Value);


                if (_HR_JobPost.IsActive.HasValue)
                    AddParameter(oDbCommand, "@IsActive", DbType.Boolean, _HR_JobPost.IsActive);
                else
                    AddParameter(oDbCommand, "@IsActive", DbType.Boolean, DBNull.Value);

                if (_HR_JobPost.JobType_Id != null)
                    AddParameter(oDbCommand, "@JobType_Id", DbType.Int32, _HR_JobPost.JobType_Id);
                else
                    AddParameter(oDbCommand, "@JobType_Id", DbType.Int32, DBNull.Value);

                if (_HR_JobPost.Start_Date != null)
                    AddParameter(oDbCommand, "@Start_Date", DbType.DateTime, _HR_JobPost.Start_Date);
                else
                    AddParameter(oDbCommand, "@Start_Date", DbType.DateTime, DBNull.Value);

                if (_HR_JobPost.Deadline != null)
                    AddParameter(oDbCommand, "@Deadline", DbType.DateTime, _HR_JobPost.Deadline);
                else
                    AddParameter(oDbCommand, "@Deadline", DbType.DateTime, DBNull.Value);

                if (_HR_JobPost.UpdateDate != null)
                    AddParameter(oDbCommand, "@UpdateDate", DbType.DateTime, _HR_JobPost.UpdateDate);
                else
                    AddParameter(oDbCommand, "@UpdateDate", DbType.DateTime, DBNull.Value);

                if (_HR_JobPost.UpdatedBy != null)
                    AddParameter(oDbCommand, "@UpdatedBy", DbType.Int32, _HR_JobPost.UpdatedBy);
                else
                    AddParameter(oDbCommand, "@UpdatedBy", DbType.Int32, DBNull.Value);

                if (_HR_JobPost.SubjectID != null)
                    AddParameter(oDbCommand, "@SubjectID", DbType.Int32, _HR_JobPost.SubjectID);
                else
                    AddParameter(oDbCommand, "@SubjectID", DbType.Int32, DBNull.Value);


                if (_HR_JobPost.SemisterID != null)
                    AddParameter(oDbCommand, "@SemisterID", DbType.Int32, _HR_JobPost.SemisterID);
                else
                    AddParameter(oDbCommand, "@SemisterID", DbType.Int32, DBNull.Value);

                if (_HR_JobPost.Year != null)
                    AddParameter(oDbCommand, "@Year", DbType.Int32, _HR_JobPost.Year);
                else
                    AddParameter(oDbCommand, "@Year", DbType.Int32, DBNull.Value);



                if (_HR_JobPost.Responsibility != null)
                    AddParameter(oDbCommand, "@Responsibility", DbType.String, _HR_JobPost.Responsibility);
                else
                    AddParameter(oDbCommand, "@Responsibility", DbType.String, DBNull.Value);


                if (_HR_JobPost.Nature != null)
                    AddParameter(oDbCommand, "@Nature", DbType.String, _HR_JobPost.Nature);
                else
                    AddParameter(oDbCommand, "@Nature", DbType.String, DBNull.Value);

                if (_HR_JobPost.Educational_Req != null)
                    AddParameter(oDbCommand, "@Educational_Req", DbType.String, _HR_JobPost.Educational_Req);
                else
                    AddParameter(oDbCommand, "@Educational_Req", DbType.String, DBNull.Value);


                if (_HR_JobPost.JobTime_Experience != null)
                    AddParameter(oDbCommand, "@JobTime_Experience", DbType.String, _HR_JobPost.JobTime_Experience);
                else
                    AddParameter(oDbCommand, "@JobTime_Experience", DbType.String, DBNull.Value);


                if (_HR_JobPost.Working_Experience != null)
                    AddParameter(oDbCommand, "@Working_Experience", DbType.String, _HR_JobPost.Working_Experience);
                else
                    AddParameter(oDbCommand, "@Working_Experience", DbType.String, DBNull.Value);


                if (_HR_JobPost.Additional_Req != null)
                    AddParameter(oDbCommand, "@Additional_Req", DbType.String, _HR_JobPost.Additional_Req);
                else
                    AddParameter(oDbCommand, "@Additional_Req", DbType.String, DBNull.Value);


                if (_HR_JobPost.Job_Location != null)
                    AddParameter(oDbCommand, "@Job_Location", DbType.String, _HR_JobPost.Job_Location);
                else
                    AddParameter(oDbCommand, "@Job_Location", DbType.String, DBNull.Value);


                if (_HR_JobPost.Salary_Range != null)
                    AddParameter(oDbCommand, "@Salary_Range", DbType.String, _HR_JobPost.Salary_Range);
                else
                    AddParameter(oDbCommand, "@Salary_Range", DbType.String, DBNull.Value);

                if (_HR_JobPost.Value != null)
                    AddParameter(oDbCommand, "@Value", DbType.String, _HR_JobPost.Value);
                else
                    AddParameter(oDbCommand, "@Value", DbType.String, DBNull.Value);


                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int HR_JobPost_Delete(int JobPost_ID)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_JobPost_Delete", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@JobPost_ID", DbType.Int32, JobPost_ID);
                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public HR_JobPost HR_JobPost_GetBySl(int JobPost_ID)
        {
            try
            {
                HR_JobPost objHR_JobPost = new HR_JobPost();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_JobPost_GetBySl", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@JobPost_ID", DbType.Int32, JobPost_ID);
                DbDataReader reader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (reader.Read())
                {
                    BuildEntity(reader, objHR_JobPost);
                }
                reader.Close();
                return objHR_JobPost;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



        public HR_JobPost HR_JobPost_GetTruckingExt(int JobPost_ID)
        {
            try
            {
                HR_JobPost objHR_JobPost = new HR_JobPost();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_JobPost_TruckingExt", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@JobPost_ID", DbType.Int32, JobPost_ID);
                DbDataReader reader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (reader.Read())
                {
                    BuildEntityExt(reader, objHR_JobPost);
                }
                reader.Close();
                return objHR_JobPost;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public HR_JobPost HR_JobCircular_GetTruckingExt(string Object)
        {
            try
            {
                HR_JobPost objHR_JobPost = new HR_JobPost();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_Jobcircular_TruckingExt", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@Object", DbType.String, Object);
                DbDataReader reader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (reader.Read())
                {
                    BuildEntityExt(reader, objHR_JobPost);
                }
                reader.Close();
                return objHR_JobPost;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        private void BuildEntityExt(DbDataReader reader, HR_JobPost _HR_JobPost)
        {
            _HR_JobPost.JobPost_ID = Convert.ToInt32(reader["JobPost_ID"]);



            if (reader["TruckingExt"] != DBNull.Value)
                _HR_JobPost.TruckingExt = Convert.ToString(reader["TruckingExt"]);


            if (reader["Value"] != DBNull.Value)
                _HR_JobPost.Value = Convert.ToString(reader["Value"]);

            if (reader["IsActive"] != DBNull.Value)
                _HR_JobPost.IsActive = Convert.ToBoolean(reader["IsActive"]);



            if (reader["SubjectID"] != DBNull.Value)
                _HR_JobPost.SubjectID = Convert.ToInt32(reader["SubjectID"]);

            if (reader["Subject"] != DBNull.Value)
                _HR_JobPost.Subject = Convert.ToString(reader["Subject"]);


            if (reader["JobType_Id"] != DBNull.Value)
                _HR_JobPost.JobType_Id = Convert.ToInt32(reader["JobType_Id"]);

            if (reader["Job_Post"] != DBNull.Value)
                _HR_JobPost.Job_Post = Convert.ToString(reader["Job_Post"]);


            if (reader["DepartmentID"] != DBNull.Value)
                _HR_JobPost.DepartmentID = Convert.ToInt32(reader["DepartmentID"]);

            if (reader["Department"] != DBNull.Value)
                _HR_JobPost.Department = Convert.ToString(reader["Department"]);


            if (reader["JobCat_Id"] != DBNull.Value)
                _HR_JobPost.JobCat_Id = Convert.ToInt32(reader["JobCat_Id"]);

            if (reader["Category"] != DBNull.Value)
                _HR_JobPost.Category = Convert.ToString(reader["Category"]);






            if (reader["SemisterID"] != DBNull.Value)
                _HR_JobPost.SemisterID = Convert.ToInt32(reader["SemisterID"]);

            if (reader["Year"] != DBNull.Value)
                _HR_JobPost.Year = Convert.ToInt32(reader["Year"]);

            if (reader["SemisterName"] != DBNull.Value)
                _HR_JobPost.SemisterName = Convert.ToString(reader["SemisterName"]);






            if (reader["Start_Date"] != DBNull.Value)
                _HR_JobPost.Start_Date = Convert.ToDateTime(reader["Start_Date"]);

            if (reader["Deadline"] != DBNull.Value)
                _HR_JobPost.Deadline = Convert.ToDateTime(reader["Deadline"]);






            if (reader["Responsibility"] != DBNull.Value)
                _HR_JobPost.Responsibility = Convert.ToString(reader["Responsibility"]);

            if (reader["Nature"] != DBNull.Value)
                _HR_JobPost.Nature = Convert.ToString(reader["Nature"]);

            if (reader["Educational_Req"] != DBNull.Value)
                _HR_JobPost.Educational_Req = Convert.ToString(reader["Educational_Req"]);

            if (reader["JobTime_Experience"] != DBNull.Value)
                _HR_JobPost.JobTime_Experience = Convert.ToString(reader["JobTime_Experience"]);

            if (reader["Working_Experience"] != DBNull.Value)
                _HR_JobPost.Working_Experience = Convert.ToString(reader["Working_Experience"]);

            if (reader["Additional_Req"] != DBNull.Value)
                _HR_JobPost.Additional_Req = Convert.ToString(reader["Additional_Req"]);

            if (reader["Job_Location"] != DBNull.Value)
                _HR_JobPost.Job_Location = Convert.ToString(reader["Job_Location"]);

            if (reader["Salary_Range"] != DBNull.Value)
                _HR_JobPost.Salary_Range = Convert.ToString(reader["Salary_Range"]);




            if (reader["CreateDate"] != DBNull.Value)
                _HR_JobPost.CreateDate = Convert.ToDateTime(reader["CreateDate"]);

            if (reader["UpdateDate"] != DBNull.Value)
                _HR_JobPost.UpdateDate = Convert.ToDateTime(reader["UpdateDate"]);

            if (reader["CreatedBy"] != DBNull.Value)
                _HR_JobPost.CreatedBy = Convert.ToInt32(reader["CreatedBy"]);

            if (reader["UpdatedBy"] != DBNull.Value)
                _HR_JobPost.UpdatedBy = Convert.ToInt32(reader["UpdatedBy"]);


        }
    }
}
