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
   public class HR_UserDAL
    {
     public HR_UserDAL()
		{
			DbProviderHelper.GetConnection();
		}
     private static void BuildEntity(DbDataReader oDbDataReader, HR_User oHR_User)
     {
         if (oDbDataReader["Id"] != DBNull.Value)
             oHR_User.Id = Convert.ToInt32(oDbDataReader["Id"]);
         if (oDbDataReader["BrId"] != DBNull.Value)
             oHR_User.BrId = Convert.ToInt32(oDbDataReader["BrId"]);
         if (oDbDataReader["HR_UserId"] != DBNull.Value)
             oHR_User.HR_UserId = Convert.ToString(oDbDataReader["HR_UserId"]);
         if (oDbDataReader["HR_UserName"] != DBNull.Value)
             oHR_User.HR_UserName = Convert.ToString(oDbDataReader["HR_UserName"]);
         if (oDbDataReader["EmailID"] != DBNull.Value)
             oHR_User.EmailID = Convert.ToString(oDbDataReader["EmailID"]);
         if (oDbDataReader["Password"] != DBNull.Value)
             oHR_User.Password = Convert.ToString(oDbDataReader["Password"]);
         if (oDbDataReader["ConfirmPassword"] != DBNull.Value)
             oHR_User.ConfirmPassword = Convert.ToString(oDbDataReader["ConfirmPassword"]);

         if (oDbDataReader["CreateDate"] != DBNull.Value)
             oHR_User.CreateDate = Convert.ToDateTime(oDbDataReader["CreateDate"]);

         if (oDbDataReader["UpdateDate"] != DBNull.Value)
             oHR_User.UpdateDate = Convert.ToDateTime(oDbDataReader["UpdateDate"]);

         if (oDbDataReader["IsRemoved"] != DBNull.Value)
             oHR_User.IsRemoved = Convert.ToBoolean(oDbDataReader["IsRemoved"]);
         if (oDbDataReader["HR_UserFullName"] != DBNull.Value)
             oHR_User.HR_UserFullName = Convert.ToString(oDbDataReader["HR_UserFullName"]);
         if (oDbDataReader["PhoneNo"] != DBNull.Value)
             oHR_User.PhoneNo = Convert.ToInt32(oDbDataReader["PhoneNo"]);

         if (oDbDataReader["Faculty_ID"] != DBNull.Value)
             oHR_User.Faculty_ID = Convert.ToInt32(oDbDataReader["Faculty_ID"]);


         if (oDbDataReader["Faculty"] != DBNull.Value)
             oHR_User.Faculty = Convert.ToString(oDbDataReader["Faculty"]);



         if (oDbDataReader["CreatedBy"] != DBNull.Value)
             oHR_User.CreatedBy = Convert.ToInt32(oDbDataReader["CreatedBy"]);

         if (oDbDataReader["UpdatedBy"] != DBNull.Value)
             oHR_User.UpdatedBy = Convert.ToInt32(oDbDataReader["UpdatedBy"]);
     }
		public List<HR_User> HR_User_GetAll()
		{
			try
			{
				List<HR_User> lstHR_User = new List<HR_User>();
				DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_User_GetAll",CommandType.StoredProcedure);
				DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
				while (oDbDataReader.Read())
				{
					HR_User oHR_User = new HR_User();
				BuildEntity(oDbDataReader, oHR_User);
					lstHR_User.Add(oHR_User);
				}
				oDbDataReader.Close();
				return lstHR_User;
			}
			catch (Exception ex)
			{
				throw ex;
			}
		}
		public List<HR_User> HR_User_GetDynamic(string WhereCondition,string OrderByExpression)
		{
			try
			{
				List<HR_User> lstHR_User = new List<HR_User>();
				DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_User_GetDynamic",CommandType.StoredProcedure);
				AddParameter(oDbCommand, "@WhereCondition", DbType.String, WhereCondition);
				AddParameter(oDbCommand, "@OrderByExpression", DbType.String, OrderByExpression);
				DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
				while (oDbDataReader.Read())
				{
					HR_User oHR_User = new HR_User();
				BuildEntity(oDbDataReader, oHR_User);
					lstHR_User.Add(oHR_User);
				}
				oDbDataReader.Close();
				return lstHR_User;
			}
			catch (Exception ex)
			{
				throw ex;
			}
		}
		public List<HR_User> HR_User_GetPaged(int StartRowIndex, int RowPerPage, string WhereClause, string SortColumn, string SortOrder)
		{
			try
			{
				List<HR_User> lstHR_User = new List<HR_User>();
				DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_User_GetPaged",CommandType.StoredProcedure);
				AddParameter(oDbCommand, "@StartRowIndex", DbType.Int32, StartRowIndex);
				AddParameter(oDbCommand, "@RowPerPage", DbType.Int32, RowPerPage);
				AddParameter(oDbCommand, "@WhereClause", DbType.String, WhereClause);
				AddParameter(oDbCommand, "@SortColumn", DbType.String, SortColumn);
				AddParameter(oDbCommand, "@SortOrder", DbType.String, SortOrder);
				DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
				while (oDbDataReader.Read())
				{
					HR_User oHR_User = new HR_User();
				BuildEntity(oDbDataReader, oHR_User);
					lstHR_User.Add(oHR_User);
				}
				oDbDataReader.Close();
				return lstHR_User;
			}
			catch (Exception ex)
			{
				throw ex;
			}
		}
		public HR_User HR_User_GetById(int Id)
		{
			try
			{
				HR_User oHR_User = new HR_User();
				DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_User_GetById",CommandType.StoredProcedure);
				AddParameter(oDbCommand, "@Id",DbType.Int32,Id);
				DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
				while (oDbDataReader.Read())
				{
				BuildEntity(oDbDataReader, oHR_User);
				}
				oDbDataReader.Close();
				return oHR_User;
			}
			catch (Exception ex)
			{
				throw ex;
			}
		}
		private void AddParameter(DbCommand oDbCommand, string parameterName, DbType dbType, object value)
		{
			 oDbCommand.Parameters.Add(DbProviderHelper.CreateParameter(parameterName,dbType,value));
		}
        public int Add(HR_User _HR_User)
        {
            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_User_Create", CommandType.StoredProcedure);


                if (_HR_User.BrId != null)
                    AddParameter(oDbCommand, "@BrId", DbType.Int32, _HR_User.BrId);
                else
                    AddParameter(oDbCommand, "@BrId", DbType.Int32, DBNull.Value);

                if (_HR_User.HR_UserId != null)
                    AddParameter(oDbCommand, "@HR_UserId", DbType.String, _HR_User.HR_UserId);
                else
                    AddParameter(oDbCommand, "@HR_UserId", DbType.String, DBNull.Value);

                if (_HR_User.HR_UserName != null)
                    AddParameter(oDbCommand, "@HR_UserName", DbType.String, _HR_User.HR_UserName);
                else
                    AddParameter(oDbCommand, "@HR_UserName", DbType.String, DBNull.Value);

                if (_HR_User.EmailID != null)
                    AddParameter(oDbCommand, "@EmailID", DbType.String, _HR_User.EmailID);
                else
                    AddParameter(oDbCommand, "@EmailID", DbType.String, DBNull.Value);

                if (_HR_User.Password != null)
                    AddParameter(oDbCommand, "@Password", DbType.String, _HR_User.Password);
                else
                    AddParameter(oDbCommand, "@Password", DbType.String, DBNull.Value);

                if (_HR_User.ConfirmPassword != null)
                    AddParameter(oDbCommand, "@ConfirmPassword", DbType.String, _HR_User.ConfirmPassword);
                else
                    AddParameter(oDbCommand, "@ConfirmPassword", DbType.String, DBNull.Value);

                if (_HR_User.Faculty_ID != null)
                    AddParameter(oDbCommand, "@Faculty_ID", DbType.Int32, _HR_User.Faculty_ID);
                else
                    AddParameter(oDbCommand, "@Faculty_ID", DbType.Int32, '0');








                if (_HR_User.CreateDate.HasValue)
                    AddParameter(oDbCommand, "@CreateDate", DbType.DateTime, _HR_User.CreateDate);
                else
                    AddParameter(oDbCommand, "@CreateDate", DbType.DateTime, DBNull.Value);
                if (_HR_User.UpdateDate.HasValue)
                    AddParameter(oDbCommand, "@UpdateDate", DbType.DateTime, _HR_User.UpdateDate);
                else
                    AddParameter(oDbCommand, "@UpdateDate", DbType.DateTime, DBNull.Value);
                if (_HR_User.IsRemoved.HasValue)
                    AddParameter(oDbCommand, "@IsRemoved", DbType.Boolean, _HR_User.IsRemoved);
                else
                    AddParameter(oDbCommand, "@IsRemoved", DbType.Boolean, DBNull.Value);
                //if (_HR_User.Role.HasValue)
                //    AddParameter(oDbCommand, "@Role", DbType.Int32, _HR_User.Role);
                //else
                //    AddParameter(oDbCommand, "@Role", DbType.Int32, DBNull.Value);
                if (_HR_User.PhoneNo.HasValue)
                    AddParameter(oDbCommand, "@PhoneNo", DbType.Int64, _HR_User.PhoneNo);
                else
                    AddParameter(oDbCommand, "@PhoneNo", DbType.Int64, DBNull.Value);

                if (_HR_User.HR_UserFullName != null)
                    AddParameter(oDbCommand, "@HR_UserFullName", DbType.String, _HR_User.HR_UserFullName);
                else
                    AddParameter(oDbCommand, "@HR_UserFullName", DbType.String, DBNull.Value);





                if (_HR_User.CreatedBy != null)
                    AddParameter(oDbCommand, "@CreatedBy", DbType.Int32, _HR_User.CreatedBy);
                else
                    AddParameter(oDbCommand, "@CreatedBy", DbType.Int32, DBNull.Value);


               

                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
		public int Update(HR_User _HR_User)
		{

			try
			{
				DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_User_Update",CommandType.StoredProcedure);

                if (_HR_User.BrId != null)
                    AddParameter(oDbCommand, "@BrId", DbType.Int32, _HR_User.BrId);
                else
                    AddParameter(oDbCommand, "@BrId", DbType.Int32, DBNull.Value);

                if (_HR_User.HR_UserId != null)
                    AddParameter(oDbCommand, "@HR_UserId", DbType.String, _HR_User.HR_UserId);
                else
                    AddParameter(oDbCommand, "@HR_UserId", DbType.String, DBNull.Value);

                if (_HR_User.HR_UserName != null)
                    AddParameter(oDbCommand, "@HR_UserName", DbType.String, _HR_User.HR_UserName);
                else
                    AddParameter(oDbCommand, "@HR_UserName", DbType.String, DBNull.Value);

                if (_HR_User.EmailID != null)
                    AddParameter(oDbCommand, "@EmailID", DbType.String, _HR_User.EmailID);
                else
                    AddParameter(oDbCommand, "@EmailID", DbType.String, DBNull.Value);

                if (_HR_User.Password != null)
                    AddParameter(oDbCommand, "@Password", DbType.String, _HR_User.Password);
                else
                    AddParameter(oDbCommand, "@Password", DbType.String, DBNull.Value);

                if (_HR_User.ConfirmPassword != null)
                    AddParameter(oDbCommand, "@ConfirmPassword", DbType.String, _HR_User.ConfirmPassword);
                else
                    AddParameter(oDbCommand, "@ConfirmPassword", DbType.String, DBNull.Value);

                if (_HR_User.Faculty_ID != null)
                    AddParameter(oDbCommand, "@Faculty_ID", DbType.Int32, _HR_User.Faculty_ID);
                else
                    AddParameter(oDbCommand, "@Faculty_ID", DbType.Int32, DBNull.Value);

                if (_HR_User.UpdatedBy != null)
                    AddParameter(oDbCommand, "@UpdatedBy", DbType.Int32, _HR_User.UpdatedBy);
                else
                    AddParameter(oDbCommand, "@UpdatedBy", DbType.Int32, DBNull.Value);
                //if (_HR_User.COM_ID!=null)
                //    AddParameter(oDbCommand, "@COM_ID", DbType.String, _HR_User.COM_ID);
                //else
                //    AddParameter(oDbCommand, "@COM_ID", DbType.String, DBNull.Value);
				if (_HR_User.CreateDate.HasValue)
					AddParameter(oDbCommand, "@CreateDate",DbType.DateTime, _HR_User.CreateDate);
				else
					AddParameter(oDbCommand, "@CreateDate",DbType.DateTime,DBNull.Value);
				if (_HR_User.UpdateDate.HasValue)
					AddParameter(oDbCommand, "@UpdateDate",DbType.DateTime, _HR_User.UpdateDate);
				else
					AddParameter(oDbCommand, "@UpdateDate",DbType.DateTime,DBNull.Value);
				if (_HR_User.IsRemoved.HasValue)
					AddParameter(oDbCommand, "@IsRemoved",DbType.Boolean, _HR_User.IsRemoved);
				else
					AddParameter(oDbCommand, "@IsRemoved",DbType.Boolean,DBNull.Value);

                //if (_HR_User.Role.HasValue)
                //    AddParameter(oDbCommand, "@Role", DbType.Int32, _HR_User.Role);
                //else
                //    AddParameter(oDbCommand, "@Role", DbType.Int32, DBNull.Value);

                if (_HR_User.PhoneNo.HasValue)
                    AddParameter(oDbCommand, "@PhoneNo", DbType.Int64, _HR_User.PhoneNo);
                else
                    AddParameter(oDbCommand, "@PhoneNo", DbType.Int64, DBNull.Value);

                if (_HR_User.HR_UserFullName != null)
                    AddParameter(oDbCommand, "@HR_UserFullName", DbType.String, _HR_User.HR_UserFullName);
                else
                    AddParameter(oDbCommand, "@HR_UserFullName", DbType.String, DBNull.Value);

                    AddParameter(oDbCommand, "@Id", DbType.Int32, _HR_User.Id);
				
				return DbProviderHelper.ExecuteNonQuery(oDbCommand);
			}
			catch (Exception ex)
			{
				throw ex;
			}
		}
		public int Delete(int Id)
		{

			try
			{
				DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_User_Delete",CommandType.StoredProcedure);
				AddParameter(oDbCommand, "@Id",DbType.Int32,Id);
				return DbProviderHelper.ExecuteNonQuery(oDbCommand);
			}
			catch (Exception ex)
			{
				throw ex;
			}
		}


        public string HR_User_GetHR_UserIDByHR_UserNamePassword(string HR_UserName, string password)
        {
            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_User_GetHR_UserIDByHR_UserNamePassword", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@HR_UserName", DbType.String, HR_UserName);
                AddParameter(oDbCommand, "@Password", DbType.String, password);
                return (string)DbProviderHelper.ExecuteScalar(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public Int32 HR_User_GetIdByHR_UserNamePassword(string HR_UserName, string password)
        {
            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_User_GetHR_UserIDByHR_UserNamePassword", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@HR_UserName", DbType.String, HR_UserName);
                AddParameter(oDbCommand, "@Password", DbType.String, password);
                return (Int32)DbProviderHelper.ExecuteScalar(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public DataTable User_GetRoleByUserID(string HR_UserName, string password)
        {
            DataTable dtUser = null;
            DbDataReader oDbDataReader = null;
            try
            {
                dtUser = new DataTable();

                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_User_GetHR_UserIDByHR_UserNamePassword", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@HR_UserName", DbType.String, HR_UserName);
                AddParameter(oDbCommand, "@Password", DbType.String, password);
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


        public int HR_User_GetMaxID()
        {
            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_User_GetMaxID", CommandType.StoredProcedure);                
                return (int)DbProviderHelper.ExecuteScalar(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public static DataTable HR_User_GetDataForGV()
        {
            DataTable dtHR_User = null;
            DbDataReader oDbDataReader = null;
            try
            {
                dtHR_User = new DataTable();

                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_User_GetAllDataForGV", CommandType.StoredProcedure);                
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
       
        public DataTable HR_User_Get_C_M_G_Name_ID(string HR_UserID)
        {
            DataTable dtHR_User = null;
            DbDataReader oDbDataReader = null;
            try
            {
                dtHR_User = new DataTable();

                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_User_Get_C_M_G_Name_ID", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@HR_UserID", DbType.String, HR_UserID);
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

        public DataTable HR_User_GetRoleByHR_UserID(string HR_UserID)
        {          
            DataTable dtHR_User = null;
            DbDataReader oDbDataReader = null;
            try
            {
                dtHR_User = new DataTable();

                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_User_GetNameAndRoleByHR_UserID", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@HR_UserID", DbType.String, HR_UserID);
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

        public int HR_User_GetProjectIDByHR_UserID(string HR_UserID)
        {
            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_User_GetProjectIDByHR_UserID", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@HR_UserID", DbType.String, HR_UserID);
                return (int)DbProviderHelper.ExecuteScalar(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            } 
        }

        public DataTable HR_User_GetAllForDDL()
        {
            DataTable dtHR_User = null;
            DbDataReader oDbDataReader = null;
            try
            {
                dtHR_User = new DataTable();

                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_User_GetAllDataForDDL", CommandType.StoredProcedure);
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


        public DataTable HR_User_GetByHR_UserId(string HR_UserID)
        {
            DataTable dtHR_User = null;
            DbDataReader oDbDataReader = null;
            try
            {
                dtHR_User = new DataTable();

                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_User_GetByHR_UserId", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@HR_UserId", DbType.String, HR_UserID);
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



        public DataTable HR_User_GetByHR_UserName(string HR_UserName)
        {
            DataTable dtHR_User = null;
            DbDataReader oDbDataReader = null;
            try
            {
                dtHR_User = new DataTable();

                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_User_GetByHR_UserName", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@HR_UserName", DbType.String, HR_UserName);
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
