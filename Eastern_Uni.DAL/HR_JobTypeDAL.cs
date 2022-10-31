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
   public class HR_JobTypeDAL
    {
        private void BuildEntity(DbDataReader reader, HR_JobType _HR_JobType)
        {
            _HR_JobType.JobType_Id = Convert.ToInt32(reader["JobType_Id"]);

            if (reader["DepartmentID"] != DBNull.Value)
                _HR_JobType.DepartmentID = Convert.ToInt32(reader["DepartmentID"]);

            if (reader["Department"] != DBNull.Value)
                _HR_JobType.Department = Convert.ToString(reader["Department"]);

            if (reader["Job_Post"] != DBNull.Value)
                _HR_JobType.Job_Post = Convert.ToString(reader["Job_Post"]);



            if (reader["JobCat_Id"] != DBNull.Value)
                _HR_JobType.JobCat_Id = Convert.ToInt32(reader["JobCat_Id"]);

            if (reader["Category"] != DBNull.Value)
                _HR_JobType.Category = Convert.ToString(reader["Category"]);



            if (reader["CreateDate"] != DBNull.Value)
                _HR_JobType.CreateDate = Convert.ToDateTime(reader["CreateDate"]);

            if (reader["UpdateDate"] != DBNull.Value)
                _HR_JobType.UpdateDate = Convert.ToDateTime(reader["UpdateDate"]);

            if (reader["CreatedBy"] != DBNull.Value)
                _HR_JobType.CreatedBy = Convert.ToInt32(reader["CreatedBy"]);

            if (reader["UpdatedBy"] != DBNull.Value)
                _HR_JobType.UpdatedBy = Convert.ToInt32(reader["UpdatedBy"]);

            if (reader["Priority"] != DBNull.Value)
                _HR_JobType.Priority = Convert.ToString(reader["Priority"]);
        }


        private void AddParameter(DbCommand oDbCommand, string parameterName, DbType dbType, object value)
        {
            oDbCommand.Parameters.Add(DbProviderHelper.CreateParameter(parameterName, dbType, value));
        }


        public List<HR_JobType> HR_JobType_GetAll()
        {
            try
            {
                List<HR_JobType> lstHR_JobType = new List<HR_JobType>();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_JobType_GetAll", CommandType.StoredProcedure);
                DbDataReader reader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (reader.Read())
                {
                    HR_JobType oHR_JobType = new HR_JobType();
                    BuildEntity(reader, oHR_JobType);
                    lstHR_JobType.Add(oHR_JobType);
                }
                reader.Close();
                return lstHR_JobType;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int HR_JobType_Add(HR_JobType _HR_JobType)
        {
            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_JobType_Create", CommandType.StoredProcedure);


                if (_HR_JobType.DepartmentID != null)
                    AddParameter(oDbCommand, "@DepartmentID", DbType.Int32, _HR_JobType.DepartmentID);
                else
                    AddParameter(oDbCommand, "@DepartmentID", DbType.Int32, DBNull.Value);

                if (_HR_JobType.Job_Post != null)
                    AddParameter(oDbCommand, "@Job_Post", DbType.String, _HR_JobType.Job_Post);
                else
                    AddParameter(oDbCommand, "@Job_Post", DbType.String, DBNull.Value);

                if (_HR_JobType.CreateDate.HasValue)
                    AddParameter(oDbCommand, "@CreateDate", DbType.DateTime, _HR_JobType.CreateDate);
                else
                    AddParameter(oDbCommand, "@CreateDate", DbType.DateTime, DBNull.Value);

                if (_HR_JobType.CreatedBy != null)
                    AddParameter(oDbCommand, "@CreatedBy", DbType.Int32, _HR_JobType.CreatedBy);
                else
                    AddParameter(oDbCommand, "@CreatedBy", DbType.Int32, DBNull.Value);


                if (_HR_JobType.Priority != null)
                    AddParameter(oDbCommand, "@Priority", DbType.String, _HR_JobType.Priority);
                else
                    AddParameter(oDbCommand, "@Priority", DbType.String, DBNull.Value);

                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }




        public DataTable LoadJobType_byDepartment(int DepartmentID)
        {
            DataTable dtRequisition = null;
            DbDataReader oDbDataReader = null;
            try
            {
                dtRequisition = new DataTable();

                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_JobTypebyDepartment", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@DepartmentID", DbType.Int32, DepartmentID);
                oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                dtRequisition.Load(oDbDataReader);
                oDbDataReader.Close();
                return dtRequisition;
            }
            catch (Exception ex)
            {
                throw ex;
            }

            finally
            {
                dtRequisition.Dispose();
                oDbDataReader.Dispose();
            }
        }




        public int HR_JobType_Update(HR_JobType _HR_JobType)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_JobType_Update", CommandType.StoredProcedure);

                AddParameter(oDbCommand, "@JobType_Id", DbType.Int32, _HR_JobType.JobType_Id);


                if (_HR_JobType.DepartmentID != null)
                    AddParameter(oDbCommand, "@DepartmentID", DbType.Int32, _HR_JobType.DepartmentID);
                else
                    AddParameter(oDbCommand, "@DepartmentID", DbType.Int32, DBNull.Value);


                if (_HR_JobType.Job_Post != "")
                    AddParameter(oDbCommand, "@Job_Post", DbType.String, _HR_JobType.Job_Post);
                else
                    AddParameter(oDbCommand, "@Job_Post", DbType.String, null);



                if (_HR_JobType.UpdatedBy != null)
                    AddParameter(oDbCommand, "@UpdatedBy", DbType.Int32, _HR_JobType.UpdatedBy);
                else
                    AddParameter(oDbCommand, "@UpdatedBy", DbType.Int32, DBNull.Value);

                if (_HR_JobType.UpdateDate.HasValue)
                    AddParameter(oDbCommand, "@UpdateDate", DbType.DateTime, _HR_JobType.UpdateDate);
                else
                    AddParameter(oDbCommand, "@UpdateDate", DbType.DateTime, DBNull.Value);

                if (_HR_JobType.Priority != null)
                    AddParameter(oDbCommand, "@Priority", DbType.String, _HR_JobType.Priority);
                else
                    AddParameter(oDbCommand, "@Priority", DbType.String, DBNull.Value);

                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int HR_JobType_Delete(int JobType_Id)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_JobType_Delete", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@JobType_Id", DbType.Int32, JobType_Id);
                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public HR_JobType HR_JobType_GetBySl(int JobType_Id)
        {
            try
            {
                HR_JobType objHR_JobType = new HR_JobType();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_JobType_GetBySl", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@JobType_Id", DbType.Int32, JobType_Id);
                DbDataReader reader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (reader.Read())
                {
                    BuildEntity(reader, objHR_JobType);
                }
                reader.Close();
                return objHR_JobType;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



        public DataTable LoadPosition_byDept(int DepartmentID)
        {
            DataTable dtRequisition = null;
            DbDataReader oDbDataReader = null;
            try
            {
                dtRequisition = new DataTable();

                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_Position_byDept", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@DepartmentID", DbType.Int32, DepartmentID);
                oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                dtRequisition.Load(oDbDataReader);
                oDbDataReader.Close();
                return dtRequisition;
            }
            catch (Exception ex)
            {
                throw ex;
            }

            finally
            {
                dtRequisition.Dispose();
                oDbDataReader.Dispose();
            }
        }

    }
}
