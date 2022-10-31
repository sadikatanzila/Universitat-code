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
   public class HR_JobCircularDAL
    {
        private void BuildEntity(DbDataReader reader, HR_JobCircular _HR_JobCircular)
        {
            _HR_JobCircular.JobCircular_ID = Convert.ToInt32(reader["JobCircular_ID"]);

            if (reader["CircularNo"] != DBNull.Value)
                _HR_JobCircular.CircularNo = Convert.ToString(reader["CircularNo"]);

            if (reader["Circular_IDGn"] != DBNull.Value)
                _HR_JobCircular.Circular_IDGn = Convert.ToString(reader["Circular_IDGn"]);

            if (reader["Deadline"] != DBNull.Value)
                _HR_JobCircular.Deadline = Convert.ToDateTime(reader["Deadline"]);


           

            if (reader["IsActive"] != DBNull.Value)
                _HR_JobCircular.IsActive = Convert.ToBoolean(reader["IsActive"]);


            if (reader["Year"] != DBNull.Value)
                _HR_JobCircular.Year = Convert.ToInt32(reader["Year"]);

            if (reader["SemisterID"] != DBNull.Value)
                _HR_JobCircular.SemisterID = Convert.ToInt32(reader["SemisterID"]);

            if (reader["SemisterName"] != DBNull.Value)
                _HR_JobCircular.SemisterName = Convert.ToString(reader["SemisterName"]);

            if (reader["CreateDate"] != DBNull.Value)
                _HR_JobCircular.CreateDate = Convert.ToDateTime(reader["CreateDate"]);

            if (reader["UpdateDate"] != DBNull.Value)
                _HR_JobCircular.UpdateDate = Convert.ToDateTime(reader["UpdateDate"]);

            if (reader["CreatedBy"] != DBNull.Value)
                _HR_JobCircular.CreatedBy = Convert.ToInt32(reader["CreatedBy"]);

            if (reader["UpdatedBy"] != DBNull.Value)
                _HR_JobCircular.UpdatedBy = Convert.ToInt32(reader["UpdatedBy"]);
        }


        private void AddParameter(DbCommand oDbCommand, string parameterName, DbType dbType, object value)
        {
            oDbCommand.Parameters.Add(DbProviderHelper.CreateParameter(parameterName, dbType, value));
        }


        public List<HR_JobCircular> HR_JobCircular_GetAll()
        {
            try
            {
                List<HR_JobCircular> lstHR_JobCircular = new List<HR_JobCircular>();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_JobCircularGetAll", CommandType.StoredProcedure);
                DbDataReader reader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (reader.Read())
                {
                    HR_JobCircular oHR_JobCircular = new HR_JobCircular();
                    BuildEntity(reader, oHR_JobCircular);
                    lstHR_JobCircular.Add(oHR_JobCircular);
                }
                reader.Close();
                return lstHR_JobCircular;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int HR_JobCircular_Add(HR_JobCircular _HR_JobCircular)
        {
            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_JobCircularCreate", CommandType.StoredProcedure);

                if (_HR_JobCircular.CircularNo != null)
                    AddParameter(oDbCommand, "@CircularNo", DbType.String, _HR_JobCircular.CircularNo);
                else
                    AddParameter(oDbCommand, "@CircularNo", DbType.String, DBNull.Value);

                if (_HR_JobCircular.Circular_IDGn != null)
                    AddParameter(oDbCommand, "@Circular_IDGn", DbType.String, _HR_JobCircular.Circular_IDGn);
                else
                    AddParameter(oDbCommand, "@Circular_IDGn", DbType.String, DBNull.Value);

                if (_HR_JobCircular.Deadline != null)
                    AddParameter(oDbCommand, "@Deadline", DbType.DateTime, _HR_JobCircular.Deadline);
                else
                    AddParameter(oDbCommand, "@Deadline", DbType.DateTime, DBNull.Value);


                if (_HR_JobCircular.SemisterID != null)
                    AddParameter(oDbCommand, "@SemisterID", DbType.Int32, _HR_JobCircular.SemisterID);
                else
                    AddParameter(oDbCommand, "@SemisterID", DbType.Int32, DBNull.Value);

                if (_HR_JobCircular.Year != null)
                    AddParameter(oDbCommand, "@Year", DbType.Int32, _HR_JobCircular.Year);
                else
                    AddParameter(oDbCommand, "@Year", DbType.Int32, DBNull.Value);


                if (_HR_JobCircular.CreateDate != null)
                    AddParameter(oDbCommand, "@CreateDate", DbType.DateTime, _HR_JobCircular.CreateDate);
                else
                    AddParameter(oDbCommand, "@CreateDate", DbType.DateTime, DBNull.Value);

                if (_HR_JobCircular.CreatedBy != null)
                    AddParameter(oDbCommand, "@CreatedBy", DbType.Int32, _HR_JobCircular.CreatedBy);
                else
                    AddParameter(oDbCommand, "@CreatedBy", DbType.Int32, DBNull.Value);

                if (_HR_JobCircular.IsActive.HasValue)
                    AddParameter(oDbCommand, "@IsActive", DbType.Boolean, _HR_JobCircular.IsActive);
                else
                    AddParameter(oDbCommand, "@IsActive", DbType.Boolean, DBNull.Value);
                

                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }




        public DataTable LoadDept_bySemisterName(int SemisterID)
        {
            DataTable dtRequisition = null;
            DbDataReader oDbDataReader = null;
            try
            {
                dtRequisition = new DataTable();

                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_JobCircularbySemisterName", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@SemisterID", DbType.Int32, SemisterID);
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




        public int HR_JobCircular_Update(HR_JobCircular _HR_JobCircular)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_JobCircularUpdate", CommandType.StoredProcedure);

                AddParameter(oDbCommand, "@JobCircular_ID", DbType.Int32, _HR_JobCircular.JobCircular_ID);


                if (_HR_JobCircular.CircularNo != null)
                    AddParameter(oDbCommand, "@CircularNo", DbType.String, _HR_JobCircular.CircularNo);
                else
                    AddParameter(oDbCommand, "@CircularNo", DbType.String, DBNull.Value);

                if (_HR_JobCircular.Circular_IDGn != null)
                    AddParameter(oDbCommand, "@Circular_IDGn", DbType.String, _HR_JobCircular.Circular_IDGn);
                else
                    AddParameter(oDbCommand, "@Circular_IDGn", DbType.String, DBNull.Value);

                if (_HR_JobCircular.Deadline != null)
                    AddParameter(oDbCommand, "@Deadline", DbType.DateTime, _HR_JobCircular.Deadline);
                else
                    AddParameter(oDbCommand, "@Deadline", DbType.DateTime, DBNull.Value);


                if (_HR_JobCircular.SemisterID != null)
                    AddParameter(oDbCommand, "@SemisterID", DbType.Int32, _HR_JobCircular.SemisterID);
                else
                    AddParameter(oDbCommand, "@SemisterID", DbType.Int32, DBNull.Value);

                if (_HR_JobCircular.Year != null)
                    AddParameter(oDbCommand, "@Year", DbType.Int32, _HR_JobCircular.Year);
                else
                    AddParameter(oDbCommand, "@Year", DbType.Int32, DBNull.Value);



                if (_HR_JobCircular.UpdatedBy != null)
                    AddParameter(oDbCommand, "@UpdatedBy", DbType.Int32, _HR_JobCircular.UpdatedBy);
                else
                    AddParameter(oDbCommand, "@UpdatedBy", DbType.Int32, DBNull.Value);

                if (_HR_JobCircular.UpdateDate != null)
                    AddParameter(oDbCommand, "@UpdateDate", DbType.DateTime, _HR_JobCircular.UpdateDate);
                else
                    AddParameter(oDbCommand, "@UpdateDate", DbType.DateTime, DBNull.Value);


                if (_HR_JobCircular.IsActive.HasValue)
                    AddParameter(oDbCommand, "@IsActive", DbType.Boolean, _HR_JobCircular.IsActive);
                else
                    AddParameter(oDbCommand, "@IsActive", DbType.Boolean, DBNull.Value);

                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int HR_JobCircular_Delete(int JobCircular_ID)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_JobCircular_Delete", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@JobCircular_ID", DbType.Int32, JobCircular_ID);
                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public HR_JobCircular HR_JobCircular_GetBySl(int JobCircular_ID)
        {
            try
            {
                HR_JobCircular objHR_JobCircular = new HR_JobCircular();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_JobCircularGetBySl", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@JobCircular_ID", DbType.Int32, JobCircular_ID);
                DbDataReader reader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (reader.Read())
                {
                    BuildEntity(reader, objHR_JobCircular);
                }
                reader.Close();
                return objHR_JobCircular;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



        public DataTable HR_Jobcircular_GetAll()
        {
            DataTable dtRequisition = null;
            DbDataReader oDbDataReader = null;
            try
            {
                dtRequisition = new DataTable();

                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_JobCircular_forddl", CommandType.StoredProcedure);
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

        public DataTable HR_Jobcircular_GetAllForDDL(DateTime currentdate)
        {
            DataTable dtRequisition = null;
            DbDataReader oDbDataReader = null;
            try
            {
                dtRequisition = new DataTable();

                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_ActivateCircular", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@currentdate", DbType.DateTime, currentdate);
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
