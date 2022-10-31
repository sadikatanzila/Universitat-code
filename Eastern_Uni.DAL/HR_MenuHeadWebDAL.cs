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
  public class HR_MenuHeadWebDAL
    {
        public HR_MenuHeadWebDAL()
        {
            DbProviderHelper.GetConnection();
        }

        private static void BuildEntity(DbDataReader oDbDataReader, HR_MenuHeadWeb oHR_MenuHeadWeb)
        {
            if (oDbDataReader["HR_MenuHeadWebID"] != DBNull.Value)
                oHR_MenuHeadWeb.HR_MenuHeadWebID = Convert.ToInt32(oDbDataReader["HR_MenuHeadWebID"]);
            if (oDbDataReader["HR_MenuHeadWebName"] != DBNull.Value)
                oHR_MenuHeadWeb.HR_MenuHeadWebName = Convert.ToString(oDbDataReader["HR_MenuHeadWebName"]);
            if (oDbDataReader["Priority"] != DBNull.Value)
                oHR_MenuHeadWeb.Priority = Convert.ToInt32(oDbDataReader["Priority"]);
            if (oDbDataReader["DivID"] != DBNull.Value)
                oHR_MenuHeadWeb.DivID = Convert.ToString(oDbDataReader["DivID"]);
        }

        public List<HR_MenuHeadWeb> HR_MenuHeadWeb_GetAll()
        {
            DbDataReader oDbDataReader = null;
            try
            {
                List<HR_MenuHeadWeb> lstHR_MenuHeadWeb = new List<HR_MenuHeadWeb>();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_MenuHeadWeb_GetAll", CommandType.StoredProcedure);
                oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    HR_MenuHeadWeb oHR_MenuHeadWeb = new HR_MenuHeadWeb();
                    BuildEntity(oDbDataReader, oHR_MenuHeadWeb);
                    lstHR_MenuHeadWeb.Add(oHR_MenuHeadWeb);
                }
                oDbDataReader.Close();
                return lstHR_MenuHeadWeb;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                oDbDataReader.Dispose();
            }
        }
        
        public List<HR_MenuHeadWeb> HR_MenuHeadWeb_GetDynamic(string WhereCondition, string OrderByExpression)
        {
            DbDataReader oDbDataReader = null;
            try
            {
                List<HR_MenuHeadWeb> lstHR_MenuHeadWeb = new List<HR_MenuHeadWeb>();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_MenuHeadWeb_GetDynamic", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@WhereCondition", DbType.String, WhereCondition);
                AddParameter(oDbCommand, "@OrderByExpression", DbType.String, OrderByExpression);
                oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    HR_MenuHeadWeb oHR_MenuHeadWeb = new HR_MenuHeadWeb();
                    BuildEntity(oDbDataReader, oHR_MenuHeadWeb);
                    lstHR_MenuHeadWeb.Add(oHR_MenuHeadWeb);
                }
                oDbDataReader.Close();
                return lstHR_MenuHeadWeb;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                oDbDataReader.Dispose();
            }
        }
       
        public List<HR_MenuHeadWeb> HR_MenuHeadWeb_GetPaged(int StartRowIndex, int RowPerPage, string WhereClause, string SortColumn, string SortOrder)
        {
            DbDataReader oDbDataReader = null;
            try
            {
                List<HR_MenuHeadWeb> lstHR_MenuHeadWeb = new List<HR_MenuHeadWeb>();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_MenuHeadWeb_GetPaged", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@StartRowIndex", DbType.Int32, StartRowIndex);
                AddParameter(oDbCommand, "@RowPerPage", DbType.Int32, RowPerPage);
                AddParameter(oDbCommand, "@WhereClause", DbType.String, WhereClause);
                AddParameter(oDbCommand, "@SortColumn", DbType.String, SortColumn);
                AddParameter(oDbCommand, "@SortOrder", DbType.String, SortOrder);
                oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    HR_MenuHeadWeb oHR_MenuHeadWeb = new HR_MenuHeadWeb();
                    BuildEntity(oDbDataReader, oHR_MenuHeadWeb);
                    lstHR_MenuHeadWeb.Add(oHR_MenuHeadWeb);
                }
                oDbDataReader.Close();
                return lstHR_MenuHeadWeb;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                oDbDataReader.Dispose();
            }
        }
     
        public HR_MenuHeadWeb HR_MenuHeadWeb_GetById(int HR_MenuHeadWebID)
        {
            DbDataReader oDbDataReader = null;
            try
            {
                HR_MenuHeadWeb oHR_MenuHeadWeb = new HR_MenuHeadWeb();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_MenuHeadWeb_GetById", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@HR_MenuHeadWebID", DbType.Int32, HR_MenuHeadWebID);
                oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    BuildEntity(oDbDataReader, oHR_MenuHeadWeb);
                }
                oDbDataReader.Close();
                return oHR_MenuHeadWeb;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                oDbDataReader.Dispose();
            }
        }






        public HR_MenuHeadWeb Get_AllInfoById(int HR_MenuHeadWebID)
        {
            try
            {
                HR_MenuHeadWeb objHR_MenuHeadWeb = new HR_MenuHeadWeb();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_MenuHeadWebInfo_GetById", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@HR_MenuHeadWebID", DbType.Int64, HR_MenuHeadWebID);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    BuildEntity(oDbDataReader, objHR_MenuHeadWeb);
                }
                oDbDataReader.Close();
                return objHR_MenuHeadWeb;
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
      
        public int Add(HR_MenuHeadWeb _HR_MenuHeadWeb)
        {
            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_MenuHeadWeb_Create", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@HR_MenuHeadWebName", DbType.String, _HR_MenuHeadWeb.HR_MenuHeadWebName);

                if (_HR_MenuHeadWeb.Priority != null)
                    AddParameter(oDbCommand, "@Priority", DbType.Int32, _HR_MenuHeadWeb.Priority);
                else
                    AddParameter(oDbCommand, "@Priority", DbType.Int32, DBNull.Value);

                return Convert.ToInt32(DbProviderHelper.ExecuteScalar(oDbCommand));
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    
        public int Update(HR_MenuHeadWeb _HR_MenuHeadWeb)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_MenuHeadWeb_Update", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@HR_MenuHeadWebName", DbType.String, _HR_MenuHeadWeb.HR_MenuHeadWebName);
                if (_HR_MenuHeadWeb.Priority != null)
                    AddParameter(oDbCommand, "@Priority", DbType.Int32, _HR_MenuHeadWeb.Priority);
                else
                    AddParameter(oDbCommand, "@Priority", DbType.Int32, DBNull.Value);

                AddParameter(oDbCommand, "@HR_MenuHeadWebID", DbType.Int32, _HR_MenuHeadWeb.HR_MenuHeadWebID);
                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
  
        public int Delete(int HR_MenuHeadWebID)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_MenuHeadWeb_DeleteById", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@HR_MenuHeadWebID", DbType.Int32, HR_MenuHeadWebID);
                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<HR_MenuHeadWeb> HR_MenuHeadWeb_GetAllByUserPermission(string userID, bool permission)
        {
            DbDataReader oDbDataReader = null;
            try
            {

                List<HR_MenuHeadWeb> lstHR_MenuHeadWeb = new List<HR_MenuHeadWeb>();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_MenuHeadWeb_GetAllByUserPermission", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@UserID", DbType.String, userID);
                AddParameter(oDbCommand, "@Permission", DbType.Boolean, permission);

                oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    HR_MenuHeadWeb oHR_MenuHeadWeb = new HR_MenuHeadWeb();
                    BuildEntity(oDbDataReader, oHR_MenuHeadWeb);
                    lstHR_MenuHeadWeb.Add(oHR_MenuHeadWeb);
                }
                oDbDataReader.Close();
                return lstHR_MenuHeadWeb;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                oDbDataReader.Dispose();
            }
        }
    }
}
