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
    public class MenuPageWebDAL
    {
       public MenuPageWebDAL()
		{
			DbProviderHelper.GetConnection();
		}
        private static void BuildEntity(DbDataReader oDbDataReader, MenuPageWeb oMenuPageWeb)
        {
            if (oDbDataReader["PageId"] != DBNull.Value)
                oMenuPageWeb.PageId = Convert.ToInt32(oDbDataReader["PageId"]);

            if (oDbDataReader["SubMenuHeadID"] != DBNull.Value)
                oMenuPageWeb.SubMenuHeadID = Convert.ToInt32(oDbDataReader["SubMenuHeadID"]);

            if (oDbDataReader["MenuHeadID"] != DBNull.Value)
                oMenuPageWeb.MenuHeadID = Convert.ToInt32(oDbDataReader["MenuHeadID"]);

           // if (oDbDataReader["MenuHeadName"] != DBNull.Value)
           //     oMenuPageWeb.MenuHeadName = Convert.ToString(oDbDataReader["MenuHeadName"]);

            if (oDbDataReader["PageName"] != DBNull.Value)
                oMenuPageWeb.PageName = Convert.ToString(oDbDataReader["PageName"]);

            if (oDbDataReader["URL"] != DBNull.Value)
                oMenuPageWeb.URL = Convert.ToString(oDbDataReader["URL"]);

            if (oDbDataReader["CreateBy"] != DBNull.Value)
                oMenuPageWeb.CreateBy = Convert.ToInt32(oDbDataReader["CreateBy"]);

            if (oDbDataReader["CreateDate"] != DBNull.Value)
                oMenuPageWeb.CreateDate = Convert.ToDateTime(oDbDataReader["CreateDate"]);

            if (oDbDataReader["UpdateBy"] != DBNull.Value)
                oMenuPageWeb.UpdateBy = Convert.ToInt32(oDbDataReader["UpdateBy"]);

            if (oDbDataReader["LastUpdateDate"] != DBNull.Value)
                oMenuPageWeb.LastUpdateDate = Convert.ToDateTime(oDbDataReader["LastUpdateDate"]);

            if (oDbDataReader["IsRemoved"] != DBNull.Value)
                oMenuPageWeb.IsRemoved = Convert.ToBoolean(oDbDataReader["IsRemoved"]);

            if (oDbDataReader["PageTitle"] != DBNull.Value)
                oMenuPageWeb.PageTitle = Convert.ToString(oDbDataReader["PageTitle"]);

            if (oDbDataReader["LiID"] != DBNull.Value)
                oMenuPageWeb.LiID = Convert.ToString(oDbDataReader["LiID"]);
        }
		public List<MenuPageWeb> MenuPageWeb_GetAll()
		{
			try
			{
				List<MenuPageWeb> lstMenuPageWeb = new List<MenuPageWeb>();
				DbCommand oDbCommand = DbProviderHelper.CreateCommand("MenuPageWeb_GetAll",CommandType.StoredProcedure);
				DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
				while (oDbDataReader.Read())
				{
					MenuPageWeb oMenuPageWeb = new MenuPageWeb();
				    BuildEntity(oDbDataReader, oMenuPageWeb);
					lstMenuPageWeb.Add(oMenuPageWeb);
				}
				oDbDataReader.Close();
				return lstMenuPageWeb;
			}
			catch (Exception ex)
			{
				throw ex;
			}
		}
		public List<MenuPageWeb> MenuPageWeb_GetDynamic(string WhereCondition,string OrderByExpression)
		{
			try
			{
				List<MenuPageWeb> lstMenuPageWeb = new List<MenuPageWeb>();
				DbCommand oDbCommand = DbProviderHelper.CreateCommand("MenuPageWeb_GetDynamic",CommandType.StoredProcedure);
				AddParameter(oDbCommand, "@WhereCondition", DbType.String, WhereCondition);
				AddParameter(oDbCommand, "@OrderByExpression", DbType.String, OrderByExpression);
				DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
				while (oDbDataReader.Read())
				{
					MenuPageWeb oMenuPageWeb = new MenuPageWeb();
				    BuildEntity(oDbDataReader, oMenuPageWeb);
					lstMenuPageWeb.Add(oMenuPageWeb);
				}
				oDbDataReader.Close();
				return lstMenuPageWeb;
			}
			catch (Exception ex)
			{
				throw ex;
			}
		}
		public List<MenuPageWeb> MenuPageWeb_GetPaged(int StartRowIndex, int RowPerPage, string WhereClause, string SortColumn, string SortOrder)
		{
			try
			{
				List<MenuPageWeb> lstMenuPageWeb = new List<MenuPageWeb>();
				DbCommand oDbCommand = DbProviderHelper.CreateCommand("MenuPageWeb_GetPaged",CommandType.StoredProcedure);
				AddParameter(oDbCommand, "@StartRowIndex", DbType.Int32, StartRowIndex);
				AddParameter(oDbCommand, "@RowPerPage", DbType.Int32, RowPerPage);
				AddParameter(oDbCommand, "@WhereClause", DbType.String, WhereClause);
				AddParameter(oDbCommand, "@SortColumn", DbType.String, SortColumn);
				AddParameter(oDbCommand, "@SortOrder", DbType.String, SortOrder);
				DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
				while (oDbDataReader.Read())
				{
					MenuPageWeb oMenuPageWeb = new MenuPageWeb();
				BuildEntity(oDbDataReader, oMenuPageWeb);
					lstMenuPageWeb.Add(oMenuPageWeb);
				}
				oDbDataReader.Close();
				return lstMenuPageWeb;
			}
			catch (Exception ex)
			{
				throw ex;
			}
		}
		public MenuPageWeb MenuPageWeb_GetById(int PageId)
		{
			try
			{
				MenuPageWeb oMenuPageWeb = new MenuPageWeb();
				DbCommand oDbCommand = DbProviderHelper.CreateCommand("MenuPageWeb_GetById",CommandType.StoredProcedure);
				AddParameter(oDbCommand, "@PageId",DbType.Int32,PageId);
				DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
				while (oDbDataReader.Read())
				{
				BuildEntity(oDbDataReader, oMenuPageWeb);
				}
				oDbDataReader.Close();
				return oMenuPageWeb;
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
		public int Add(MenuPageWeb _MenuPageWeb)
		{
			try
			{
				DbCommand oDbCommand = DbProviderHelper.CreateCommand("MenuPageWeb_Create",CommandType.StoredProcedure);
                if (_MenuPageWeb.MenuHeadID != null)
                    AddParameter(oDbCommand, "@MenuHeadID", DbType.Int32, _MenuPageWeb.MenuHeadID);

                if (_MenuPageWeb.SubMenuHeadID != null)
                    AddParameter(oDbCommand, "@SubMenuHeadID", DbType.Int32, _MenuPageWeb.SubMenuHeadID);

                if (_MenuPageWeb.PageName != null)
                    AddParameter(oDbCommand, "@PageName", DbType.String, _MenuPageWeb.PageName);

               // if (_MenuPageWeb.MenuHeadName != null)
               //     AddParameter(oDbCommand, "@MenuHeadName", DbType.String, _MenuPageWeb.MenuHeadName);

                if (_MenuPageWeb.URL != null)
                    AddParameter(oDbCommand, "@URL", DbType.String, _MenuPageWeb.URL);

                if (_MenuPageWeb.CreateBy != null)
                    AddParameter(oDbCommand, "@CreateBy", DbType.Int32, _MenuPageWeb.CreateBy);
                else
                    AddParameter(oDbCommand, "@CreateBy", DbType.Int32, DBNull.Value);

				if (_MenuPageWeb.CreateDate.HasValue)
					AddParameter(oDbCommand, "@CreateDate",DbType.DateTime, _MenuPageWeb.CreateDate);
				else
					AddParameter(oDbCommand, "@CreateDate",DbType.DateTime,DBNull.Value);

              //  if (_MenuPageWeb.UpdateBy != null)
               //     AddParameter(oDbCommand, "@UpdateBy", DbType.Int32, _MenuPageWeb.UpdateBy);
               // else
               //     AddParameter(oDbCommand, "@UpdateBy", DbType.Int32, DBNull.Value);

			//	if (_MenuPageWeb.LastUpdateDate.HasValue)
			//		AddParameter(oDbCommand, "@LastUpdateDate",DbType.DateTime, _MenuPageWeb.LastUpdateDate);
			//	else
			//		AddParameter(oDbCommand, "@LastUpdateDate",DbType.DateTime,DBNull.Value);

				AddParameter(oDbCommand, "@IsRemoved",DbType.Int32, _MenuPageWeb.IsRemoved);

				return Convert.ToInt32(DbProviderHelper.ExecuteScalar(oDbCommand));
			}
			catch (Exception ex)
			{
				throw ex;
			}
		}
		public int Update(MenuPageWeb _MenuPageWeb)
		{

			try
			{
				DbCommand oDbCommand = DbProviderHelper.CreateCommand("MenuPageWeb_Update",CommandType.StoredProcedure);
				AddParameter(oDbCommand, "@MenuHeadID",DbType.Int32, _MenuPageWeb.MenuHeadID);
				AddParameter(oDbCommand, "@PageName",DbType.String, _MenuPageWeb.PageName);
				AddParameter(oDbCommand, "@URL",DbType.String, _MenuPageWeb.URL);

              //  if (_MenuPageWeb.CreateBy != null)
              //      AddParameter(oDbCommand, "@CreateBy", DbType.Int32, _MenuPageWeb.CreateBy);
             //   else
              //      AddParameter(oDbCommand, "@CreateBy", DbType.Int32, DBNull.Value);

			//	if (_MenuPageWeb.CreateDate.HasValue)
			//		AddParameter(oDbCommand, "@CreateDate",DbType.DateTime, _MenuPageWeb.CreateDate);
			//	else
			//		AddParameter(oDbCommand, "@CreateDate",DbType.DateTime,DBNull.Value);

                if (_MenuPageWeb.UpdateBy != null)
                    AddParameter(oDbCommand, "@UpdateBy", DbType.Int32, _MenuPageWeb.UpdateBy);
                else
                    AddParameter(oDbCommand, "@UpdateBy", DbType.Int32, DBNull.Value);

                if (_MenuPageWeb.LastUpdateDate.HasValue)
					AddParameter(oDbCommand, "@LastUpdateDate",DbType.DateTime, _MenuPageWeb.LastUpdateDate);
				else
					AddParameter(oDbCommand, "@LastUpdateDate",DbType.DateTime,DBNull.Value);
				AddParameter(oDbCommand, "@IsRemoved",DbType.Int32, _MenuPageWeb.IsRemoved);
				AddParameter(oDbCommand, "@PageId",DbType.Int32, _MenuPageWeb.PageId);
				return DbProviderHelper.ExecuteNonQuery(oDbCommand);
			}
			catch (Exception ex)
			{
				throw ex;
			}
		}

		public int Delete(int PageId)
		{

			try
			{
				DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_MenuPageWeb_DeleteById",CommandType.StoredProcedure);
				AddParameter(oDbCommand, "@PageId",DbType.Int32,PageId);
				return DbProviderHelper.ExecuteNonQuery(oDbCommand);
			}
			catch (Exception ex)
			{
				throw ex;
			}
		}

        public List<MenuPageWeb> MenuPageWeb_GetAllByHeadUser(int headID, string userID, bool permission)
        {
            try
            {
                List<MenuPageWeb> lstMenuPageWeb = new List<MenuPageWeb>();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("MenuPageWeb_GetAllByHeadUser", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@HeadID", DbType.Int32, headID);
                AddParameter(oDbCommand, "@UserID", DbType.String, userID);
                AddParameter(oDbCommand, "@Permission", DbType.Boolean, permission);
                
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    MenuPageWeb oMenuPageWeb = new MenuPageWeb();
                    BuildEntity(oDbDataReader, oMenuPageWeb);
                    lstMenuPageWeb.Add(oMenuPageWeb);
                }
                oDbDataReader.Close();
                return lstMenuPageWeb;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public List<MenuPageWeb> LoadMenuPageWeb_GetAll()
        {
            try
            {
                List<MenuPageWeb> MenuPageWebList = new List<MenuPageWeb>();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_MenuPageWeb_GetAll", CommandType.StoredProcedure);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    MenuPageWeb oMenuPageWeb = new MenuPageWeb();
                    BuildEntity(oDbDataReader, oMenuPageWeb);
                    MenuPageWebList.Add(oMenuPageWeb);
                }
                oDbDataReader.Close();
                return MenuPageWebList;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public MenuPageWeb Get_StntInfoById(int PageId)
        {
            try
            {
                MenuPageWeb objMenuPageWeb = new MenuPageWeb();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("MenuPageWebInfo_GetById", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@PageId", DbType.Int64, PageId);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    BuildEntity(oDbDataReader, objMenuPageWeb);
                }
                oDbDataReader.Close();
                return objMenuPageWeb;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }




        public DataTable MenuPageWeb_GetAllByHeadID(int headID)
        {

            DataTable dtPages = null;
            DbDataReader oDbDataReader = null;
            try
            {
                dtPages = new DataTable();

                DbCommand oDbCommand = DbProviderHelper.CreateCommand("MenuPageWeb_GetAllByHeadID", CommandType.StoredProcedure);

                AddParameter(oDbCommand, "@HeadID", DbType.Int32, headID);

                oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                dtPages.Load(oDbDataReader);
                oDbDataReader.Close();
                return dtPages;
            }
            catch (Exception ex)
            {
                throw ex;
            }

            finally
            {
                dtPages.Dispose();
                oDbDataReader.Dispose();
            }
        }
    }
}
