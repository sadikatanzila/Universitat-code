using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.Common;
using Eastern_Uni.DAL;
using EasternUni.BO;

using System.Web;
using System.Web.UI.WebControls;

namespace Eastern_Uni.DAL
{
  public class HRGlobalClass
    {
        public static string _userID = String.Empty;

        public static string userID
        {
            get { return _userID; }
            set { _userID = value; }
        }

        public static string _userName = String.Empty;

        public static string userName
        {
            get { return _userName; }
            set { _userName = value; }
        }

        public static string BusinessType { get; set; }

        public static void BindCustomerList(DropDownList ddl)
        {

            DataTable dt = new DataTable();
            dt = CreateDataTable("T_Customer_GetAll");

            DataRow row = dt.NewRow();
            row["Name"] = "--Please select Customer--";
            dt.Rows.InsertAt(row, 0);

            ddl.DataSource = dt;
            ddl.DataTextField = "Name";
            ddl.DataValueField = "CustomerID";
            ddl.DataBind();
        }


        public static void BindInvoiceList(DateTime ddl)
        {

            DataTable dt = new DataTable();
            dt = CreateDataTable("T_Invoice_GetAll");

            DataRow row = dt.NewRow();
            row["InvoiceNo"] = "--Please select Invoice No--";
            dt.Rows.InsertAt(row, 0);

            //ddl.DataSource = dt;
            //ddl.DisplayMember = "Name";
            //ddl.ValueMember = "CustomerID";

        }

        public static void BindCategoryList(DropDownList ddl)
        {

            DataTable dt = new DataTable();
            dt = CreateDataTable("T_Category_GetAll");

            DataRow row = dt.NewRow();
            row["CategoryName"] = "--Please select Category--";
            row["CategoryID"] = 0;
            dt.Rows.InsertAt(row, 0);

            ddl.DataSource = dt;
            ddl.DataTextField = "CategoryName";
            ddl.DataValueField = "CategoryID";

        }


        public static void BindGroupList(DropDownList ddl)
        {

            DataTable dt = new DataTable();
            dt = CreateDataTable("T_Group_GetAll");

            DataRow row = dt.NewRow();
            row["Dept_Name"] = "--All--";
            row["DeptId"] = 0;
            dt.Rows.InsertAt(row, 0);

            ddl.DataSource = dt;
            ddl.DataTextField = "Dept_Name";
            ddl.DataValueField = "DeptId";

        }
        public static void BindSubCategoryList(DropDownList ddl)
        {

            DataTable dt = new DataTable();
            dt = CreateDataTable("T_SubCategory_GetAll");

            DataRow row = dt.NewRow();
            row["SubCategoryName"] = "--Please select Sub Category--";
            dt.Rows.InsertAt(row, 0);

            ddl.DataSource = dt;
            ddl.DataTextField = "SubCategoryName";
            ddl.DataValueField = "SubCategoryID";

        }
        public static void BindUnitList(DropDownList ddl)
        {

            DataTable dt = new DataTable();
            dt = CreateDataTable("T_UNIT_GetAll");

            DataRow row = dt.NewRow();
            row["UnitName"] = "--Please select Unit--";
            dt.Rows.InsertAt(row, 0);

            ddl.DataSource = dt;
            ddl.DataTextField = "UnitName";
            ddl.DataValueField = "UnitID";

        }
        public static void BindSupplierList(DropDownList ddl)
        {

            DataTable dt = new DataTable();
            dt = CreateDataTable("T_Supplier_GetAll");

            DataRow row = dt.NewRow();
            row["SupplierName"] = "--Please select Supplier Name--";
            dt.Rows.InsertAt(row, 0);

            ddl.DataSource = dt;
            ddl.DataTextField = "SupplierName";
            ddl.DataValueField = "SupplierID";

        }
        public static void BindDepartmentList(DropDownList ddl)
        {

            DataTable dt = new DataTable();
            dt = CreateDataTable("Department_GetAll");

            DataRow row = dt.NewRow();
            row["Dept_Name"] = "--Please select Department--";
            dt.Rows.InsertAt(row, 0);

            ddl.DataSource = dt;
            ddl.DataTextField = "Dept_Name";
            ddl.DataValueField = "DeptId";

        }

        public static DataTable CreateDataTable(string pStoreProcedure)
        {
            DataTable table = new DataTable();
            try
            {
                DbCommand command = DbProviderHelper.CreateCommand(pStoreProcedure, CommandType.StoredProcedure);
                DbDataAdapter adapter = DbProviderHelper.CreateDataAdapter(command);
                adapter.Fill(table);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                table.Dispose();
            }
            return table;
        }


        public static DataTable CreateDataTableByType(string pStoreProcedure, string paramName, Int16 paramValue)
        {
            DataTable table = new DataTable();
            try
            {
                DbCommand command = DbProviderHelper.CreateCommand(pStoreProcedure, CommandType.StoredProcedure);
                command.Parameters.Add(DbProviderHelper.CreateParameter(paramName, DbType.Int16, paramValue));
                DbDataAdapter adapter = DbProviderHelper.CreateDataAdapter(command);
                adapter.Fill(table);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                table.Dispose();
            }
            return table;
        }

        public static void LoadUser(DropDownList ddl)
        {
            DataTable dt = new DataTable();
            dt = CreateDataTable("User_GetAll");

            DataRow row = dt.NewRow();
            row["UserName"] = "--Please select User--";
            dt.Rows.InsertAt(row, 0);

            ddl.DataSource = dt;
            ddl.DataTextField = "UserName";
            ddl.DataValueField = "UserId";

        }


        public static void LoadUserByValueId(DropDownList ddl)
        {
            DataTable dt = new DataTable();
            dt = CreateDataTable("User_GetAll");

            DataRow row = dt.NewRow();
            row["UserName"] = "--Please select User--";
            row["Id"] = 0;

            dt.Rows.InsertAt(row, 0);

            ddl.DataSource = dt;
            ddl.DataTextField = "UserName";
            ddl.DataValueField = "Id";

        }



        public static DataTable GetDataTableByDateRange(string pStoreProcedure, DateTime fromDate, DateTime ToDate, Int32 BrId)
        {
            DataTable table = new DataTable();
            try
            {
                DbCommand command = DbProviderHelper.CreateCommand(pStoreProcedure, CommandType.StoredProcedure);
                command.Parameters.Add(DbProviderHelper.CreateParameter("@fromDate", DbType.Date, fromDate));
                command.Parameters.Add(DbProviderHelper.CreateParameter("@ToDate", DbType.Date, ToDate));
                command.Parameters.Add(DbProviderHelper.CreateParameter("@BrId", DbType.Int32, BrId));
                DbDataAdapter adapter = DbProviderHelper.CreateDataAdapter(command);
                adapter.Fill(table);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                table.Dispose();
            }
            return table;
        }

        public static DataTable GetDataTableByDate(string pStoreProcedure, DateTime fromDate, int BrId)
        {
            DataTable table = new DataTable();
            try
            {
                DbCommand command = DbProviderHelper.CreateCommand(pStoreProcedure, CommandType.StoredProcedure);
                command.Parameters.Add(DbProviderHelper.CreateParameter("@fromDate", DbType.Date, fromDate));
                command.Parameters.Add(DbProviderHelper.CreateParameter("@BrId", DbType.Int32, BrId));
                DbDataAdapter adapter = DbProviderHelper.CreateDataAdapter(command);
                adapter.Fill(table);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                table.Dispose();
            }
            return table;
        }

        public static DataTable GetDataTableByDate_br(string pStoreProcedure, DateTime fromDate, int BrId)
        {
            DataTable table = new DataTable();
            try
            {
                DbCommand command = DbProviderHelper.CreateCommand(pStoreProcedure, CommandType.StoredProcedure);
                command.Parameters.Add(DbProviderHelper.CreateParameter("@fromDate", DbType.Date, fromDate));
                command.Parameters.Add(DbProviderHelper.CreateParameter("@BrId", DbType.Date, BrId));
                DbDataAdapter adapter = DbProviderHelper.CreateDataAdapter(command);
                adapter.Fill(table);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                table.Dispose();
            }
            return table;
        }


        public static DataTable CreateDataTableByProductCatagory(string pStoreProcedure, string paramName, int paramValue)
        {
            DataTable table = new DataTable();
            try
            {
                DbCommand command = DbProviderHelper.CreateCommand(pStoreProcedure, CommandType.StoredProcedure);
                //command.Parameters.Add(DbProviderHelper.CreateParameter(parameterName, dbType, value));
                command.Parameters.Add(DbProviderHelper.CreateParameter(paramName, DbType.Int32, paramValue));
                DbDataAdapter adapter = DbProviderHelper.CreateDataAdapter(command);
                adapter.Fill(table);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                table.Dispose();
            }
            return table;
        }

        public static bool MakeDatabaseBackup(string path)
        {
            try
            {
                DbCommand command = DbProviderHelper.CreateCommand("SP_DB_Backup", CommandType.StoredProcedure);
                command.Parameters.Add(DbProviderHelper.CreateParameter("@DiskPath", DbType.String, path));
                DbProviderHelper.ExecuteNonQuery(command);
            }
            catch
            {
                throw;
            }
            return true;
        }


        public static DataTable GetItemsOfInvoice(string pStoreProcedure, string pParameterName, int pReceivedId)
        {
            DataTable table = new DataTable();
            try
            {
                DbCommand command = DbProviderHelper.CreateCommand(pStoreProcedure, CommandType.StoredProcedure);
                command.Parameters.Add(DbProviderHelper.CreateParameter(pParameterName, DbType.Int32, pReceivedId));
                DbDataAdapter adapter = DbProviderHelper.CreateDataAdapter(command);
                adapter.Fill(table);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                table.Dispose();
            }
            return table;
        }
    }
}
