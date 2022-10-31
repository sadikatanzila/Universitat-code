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
  public  class HR_JobCategoryDAL
    {
        private void BuildEntity(DbDataReader reader, HR_JobCategory _HR_JobCategory)
        {

            _HR_JobCategory.JobCat_Id = Convert.ToInt32(reader["JobCat_Id"]);

            if (reader["Category"] != DBNull.Value)
                _HR_JobCategory.Category = Convert.ToString(reader["Category"]);

            if (reader["Priority"] != DBNull.Value)
                _HR_JobCategory.Priority = Convert.ToString(reader["Priority"]);



            if (reader["CreateDate"] != DBNull.Value)
                _HR_JobCategory.CreateDate = Convert.ToDateTime(reader["CreateDate"]);

            if (reader["UpdateDate"] != DBNull.Value)
                _HR_JobCategory.UpdateDate = Convert.ToDateTime(reader["UpdateDate"]);

            if (reader["CreatedBy"] != DBNull.Value)
                _HR_JobCategory.CreatedBy = Convert.ToInt32(reader["CreatedBy"]);

            if (reader["UpdatedBy"] != DBNull.Value)
                _HR_JobCategory.UpdatedBy = Convert.ToInt32(reader["UpdatedBy"]);
        }


        private void AddParameter(DbCommand oDbCommand, string parameterName, DbType dbType, object value)
        {
            oDbCommand.Parameters.Add(DbProviderHelper.CreateParameter(parameterName, dbType, value));
        }


        public List<HR_JobCategory> HR_JobCategory_GetAll()
        {
            try
            {
                List<HR_JobCategory> lstHR_JobCategory = new List<HR_JobCategory>();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_JobCategory_GetAll", CommandType.StoredProcedure);
                DbDataReader reader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (reader.Read())
                {
                    HR_JobCategory oHR_JobCategory = new HR_JobCategory();
                    BuildEntity(reader, oHR_JobCategory);
                    lstHR_JobCategory.Add(oHR_JobCategory);
                }
                reader.Close();
                return lstHR_JobCategory;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int HR_JobCategory_Add(HR_JobCategory _HR_JobCategory)
        {
            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_JobCategory_Create", CommandType.StoredProcedure);


                if (_HR_JobCategory.Category != null)
                    AddParameter(oDbCommand, "@Category", DbType.String, _HR_JobCategory.Category);
                else
                    AddParameter(oDbCommand, "@Category", DbType.String, DBNull.Value);

                if (_HR_JobCategory.Priority != null)
                    AddParameter(oDbCommand, "@Priority", DbType.String, _HR_JobCategory.Priority);
                else
                    AddParameter(oDbCommand, "@Priority", DbType.String, DBNull.Value);

                if (_HR_JobCategory.CreateDate.HasValue)
                    AddParameter(oDbCommand, "@CreateDate", DbType.DateTime, _HR_JobCategory.CreateDate);
                else
                    AddParameter(oDbCommand, "@CreateDate", DbType.DateTime, DBNull.Value);

                if (_HR_JobCategory.CreatedBy != null)
                    AddParameter(oDbCommand, "@CreatedBy", DbType.Int32, _HR_JobCategory.CreatedBy);
                else
                    AddParameter(oDbCommand, "@CreatedBy", DbType.Int32, DBNull.Value);

                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


       

        public DataTable HR_JobType_GetAllForDDL()
        {
            DataTable dtHR_User = null;
            DbDataReader oDbDataReader = null;
            try
            {
                dtHR_User = new DataTable();

                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_JobCategory_GetAll", CommandType.StoredProcedure);
                oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                dtHR_User.Load(oDbDataReader);
                oDbDataReader.Close();
                return dtHR_User;
            }
            catch (Exception ex)
            {
                throw ex;
            }

            finally
            {
                dtHR_User.Dispose();
                oDbDataReader.Dispose();
            }
        }



        public int HR_JobCategory_Update(HR_JobCategory _HR_JobCategory)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_JobCategory_Update", CommandType.StoredProcedure);

                AddParameter(oDbCommand, "@JobCat_Id", DbType.Int32, _HR_JobCategory.JobCat_Id);


                if (_HR_JobCategory.Category != "")
                    AddParameter(oDbCommand, "@Category", DbType.String, _HR_JobCategory.Category);
                else
                    AddParameter(oDbCommand, "@Category", DbType.String, null);

                if (_HR_JobCategory.Priority != "")
                    AddParameter(oDbCommand, "@Priority", DbType.String, _HR_JobCategory.Priority);
                else
                    AddParameter(oDbCommand, "@Priority", DbType.String, null);



                if (_HR_JobCategory.UpdatedBy != null)
                    AddParameter(oDbCommand, "@UpdatedBy", DbType.Int32, _HR_JobCategory.UpdatedBy);
                else
                    AddParameter(oDbCommand, "@UpdatedBy", DbType.Int32, DBNull.Value);
               
                if (_HR_JobCategory.UpdateDate.HasValue)
                    AddParameter(oDbCommand, "@UpdateDate", DbType.DateTime, _HR_JobCategory.UpdateDate);
                else
                    AddParameter(oDbCommand, "@UpdateDate", DbType.DateTime, DBNull.Value);


                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int HR_JobCategory_Delete(int JobCat_Id)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_JobCategory_Delete", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@JobCat_Id", DbType.Int32, JobCat_Id);
                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public HR_JobCategory HR_JobCategory_GetBySl(int JobCat_Id)
        {
            try
            {
                HR_JobCategory objHR_JobCategory = new HR_JobCategory();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_JobCategory_GetBySl", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@JobCat_Id", DbType.Int32, JobCat_Id);
                DbDataReader reader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (reader.Read())
                {
                    BuildEntity(reader, objHR_JobCategory);
                }
                reader.Close();
                return objHR_JobCategory;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
