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
   public class HR_DepartmentDAL
    {
        private void BuildEntity(DbDataReader reader, HR_Department _HR_Department)
        {
            _HR_Department.DepartmentID = Convert.ToInt32(reader["DepartmentID"]);

            if (reader["JobCat_Id"] != DBNull.Value)
                _HR_Department.JobCat_Id = Convert.ToInt32(reader["JobCat_Id"]);

            if (reader["Category"] != DBNull.Value)
                _HR_Department.Category = Convert.ToString(reader["Category"]);

            if (reader["Department"] != DBNull.Value)
                _HR_Department.Department = Convert.ToString(reader["Department"]);



            if (reader["CreateDate"] != DBNull.Value)
                _HR_Department.CreateDate = Convert.ToDateTime(reader["CreateDate"]);

            if (reader["UpdateDate"] != DBNull.Value)
                _HR_Department.UpdateDate = Convert.ToDateTime(reader["UpdateDate"]);

            if (reader["CreatedBy"] != DBNull.Value)
                _HR_Department.CreatedBy = Convert.ToInt32(reader["CreatedBy"]);

            if (reader["UpdatedBy"] != DBNull.Value)
                _HR_Department.UpdatedBy = Convert.ToInt32(reader["UpdatedBy"]);

            if (reader["Priority"] != DBNull.Value)
                _HR_Department.Priority = Convert.ToString(reader["Priority"]);
        }


        private void AddParameter(DbCommand oDbCommand, string parameterName, DbType dbType, object value)
        {
            oDbCommand.Parameters.Add(DbProviderHelper.CreateParameter(parameterName, dbType, value));
        }


        public List<HR_Department> HR_Department_GetAll()
        {
            try
            {
                List<HR_Department> lstHR_Department = new List<HR_Department>();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_Department_GetAll", CommandType.StoredProcedure);
                DbDataReader reader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (reader.Read())
                {
                    HR_Department oHR_Department = new HR_Department();
                    BuildEntity(reader, oHR_Department);
                    lstHR_Department.Add(oHR_Department);
                }
                reader.Close();
                return lstHR_Department;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int HR_Department_Add(HR_Department _HR_Department)
        {
            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_Department_Create", CommandType.StoredProcedure);


                if (_HR_Department.JobCat_Id != null)
                    AddParameter(oDbCommand, "@JobCat_Id", DbType.Int32, _HR_Department.JobCat_Id);
                else
                    AddParameter(oDbCommand, "@JobCat_Id", DbType.Int32, DBNull.Value);

                if (_HR_Department.Department != null)
                    AddParameter(oDbCommand, "@Department", DbType.String, _HR_Department.Department);
                else
                    AddParameter(oDbCommand, "@Department", DbType.String, DBNull.Value);

                if (_HR_Department.CreateDate.HasValue)
                    AddParameter(oDbCommand, "@CreateDate", DbType.DateTime, _HR_Department.CreateDate);
                else
                    AddParameter(oDbCommand, "@CreateDate", DbType.DateTime, DBNull.Value);

                if (_HR_Department.CreatedBy != null)
                    AddParameter(oDbCommand, "@CreatedBy", DbType.Int32, _HR_Department.CreatedBy);
                else
                    AddParameter(oDbCommand, "@CreatedBy", DbType.Int32, DBNull.Value);


                if (_HR_Department.Priority != null)
                    AddParameter(oDbCommand, "@Priority", DbType.String, _HR_Department.Priority);
                else
                    AddParameter(oDbCommand, "@Priority", DbType.String, DBNull.Value);

                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }




        public DataTable LoadDept_byCategory(int JobCat_Id)
        {
            DataTable dtRequisition = null;
            DbDataReader oDbDataReader = null;
            try
            {
                dtRequisition = new DataTable();

                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_DepartmentbyCategory", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@JobCat_Id", DbType.Int32, JobCat_Id);
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




        public int HR_Department_Update(HR_Department _HR_Department)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_Department_Update", CommandType.StoredProcedure);

                AddParameter(oDbCommand, "@DepartmentID", DbType.Int32, _HR_Department.DepartmentID);


                if (_HR_Department.JobCat_Id != null)
                    AddParameter(oDbCommand, "@JobCat_Id", DbType.Int32, _HR_Department.JobCat_Id);
                else
                    AddParameter(oDbCommand, "@JobCat_Id", DbType.Int32, DBNull.Value);


                // if (_HR_Department.Category != "")
                //     AddParameter(oDbCommand, "@Category", DbType.String, _HR_Department.Category);
                //  else
                //      AddParameter(oDbCommand, "@Category", DbType.String, null);

                if (_HR_Department.Department != "")
                    AddParameter(oDbCommand, "@Department", DbType.String, _HR_Department.Department);
                else
                    AddParameter(oDbCommand, "@Department", DbType.String, null);



                if (_HR_Department.UpdatedBy != null)
                    AddParameter(oDbCommand, "@UpdatedBy", DbType.Int32, _HR_Department.UpdatedBy);
                else
                    AddParameter(oDbCommand, "@UpdatedBy", DbType.Int32, DBNull.Value);

                if (_HR_Department.UpdateDate.HasValue)
                    AddParameter(oDbCommand, "@UpdateDate", DbType.DateTime, _HR_Department.UpdateDate);
                else
                    AddParameter(oDbCommand, "@UpdateDate", DbType.DateTime, DBNull.Value);

                if (_HR_Department.Priority != null)
                    AddParameter(oDbCommand, "@Priority", DbType.String, _HR_Department.Priority);
                else
                    AddParameter(oDbCommand, "@Priority", DbType.String, DBNull.Value);

                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int HR_Department_Delete(int DepartmentID)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_Department_Delete", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@DepartmentID", DbType.Int32, DepartmentID);
                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public HR_Department HR_Department_GetBySl(int DepartmentID)
        {
            try
            {
                HR_Department objHR_Department = new HR_Department();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_Department_GetBySl", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@DepartmentID", DbType.Int32, DepartmentID);
                DbDataReader reader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (reader.Read())
                {
                    BuildEntity(reader, objHR_Department);
                }
                reader.Close();
                return objHR_Department;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



        public DataTable HR_FacultyDept_GetAllForDDL()
        {
            DataTable dtHR_User = null;
            DbDataReader oDbDataReader = null;
            try
            {
                dtHR_User = new DataTable();

                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_FacultyDept_GetAll", CommandType.StoredProcedure);
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
    }
}
