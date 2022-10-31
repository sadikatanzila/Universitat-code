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
    public class EU_WorkshopDAL
    {
        private void BuildEntityAll(DbDataReader reader, EU_Workshop _EU_Workshop)
        {

            _EU_Workshop.Sl = Convert.ToInt32(reader["Sl"]);

            if (reader["TruckingExt"] != DBNull.Value)
                _EU_Workshop.TruckingExt = Convert.ToString(reader["TruckingExt"]);


            if (reader["Name"] != DBNull.Value)
                _EU_Workshop.Name = Convert.ToString(reader["Name"]);

            if (reader["Email"] != DBNull.Value)
                _EU_Workshop.Email = Convert.ToString(reader["Email"]);

            if (reader["Phone"] != DBNull.Value)
                _EU_Workshop.Phone = Convert.ToString(reader["Phone"]);           


            if (reader["Designation"] != DBNull.Value)
                _EU_Workshop.Designation = Convert.ToString(reader["Designation"]);

            if (reader["Company"] != DBNull.Value)
                _EU_Workshop.Company = Convert.ToString(reader["Company"]);

            if (reader["Edu_Qual"] != DBNull.Value)
                _EU_Workshop.Edu_Qual = Convert.ToString(reader["Edu_Qual"]);

            if (reader["Data_Inserted"] != DBNull.Value)
                _EU_Workshop.Data_Inserted = Convert.ToDateTime(reader["Data_Inserted"]);

            if (reader["Deleted"] != DBNull.Value)
                _EU_Workshop.Deleted = Convert.ToInt32(reader["Deleted"]);
        }

        public List<EU_Workshop> EU_Workshop_GetAll()
        {
            try
            {
                List<EU_Workshop> EU_WorkshopList = new List<EU_Workshop>();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("EU_Workshop_GetAll", CommandType.StoredProcedure);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    EU_Workshop oEU_Workshop = new EU_Workshop();
                    BuildEntityAll(oDbDataReader, oEU_Workshop);
                    EU_WorkshopList.Add(oEU_Workshop);
                }
                oDbDataReader.Close();
                return EU_WorkshopList;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int EU_Workshop_Delete(int EU_WorkshopID)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("EU_Workshop_Delete", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@EU_WorkshopID", DbType.Int32, EU_WorkshopID);
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

        public DataTable LoadEU_Workshop_GetAll()
        {
            DataTable dtUser = null;
            DbDataReader oDbDataReader = null;
            try
            {
                dtUser = new DataTable();

                DbCommand oDbCommand = DbProviderHelper.CreateCommand("EU_Workshop_GetAll", CommandType.StoredProcedure);
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


        public int Add_EU_Workshop(EU_Workshop _EU_Workshop)
        {
            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("Add_EU_Workshop", CommandType.StoredProcedure);



                if (_EU_Workshop.Name != null)
                    AddParameter(oDbCommand, "@Name", DbType.String, _EU_Workshop.Name);
                else
                    AddParameter(oDbCommand, "@Name", DbType.String, DBNull.Value);


                if (_EU_Workshop.Email != null)
                    AddParameter(oDbCommand, "@Email", DbType.String, _EU_Workshop.Email);
                else
                    AddParameter(oDbCommand, "@Email", DbType.String, DBNull.Value);

                if (_EU_Workshop.Phone != null)
                    AddParameter(oDbCommand, "@Phone", DbType.String, _EU_Workshop.Phone);
                else
                    AddParameter(oDbCommand, "@Phone", DbType.String, DBNull.Value);

                if (_EU_Workshop.Designation != null)
                    AddParameter(oDbCommand, "@Designation", DbType.String, _EU_Workshop.Designation);
                else
                    AddParameter(oDbCommand, "@Designation", DbType.String, DBNull.Value);


                if (_EU_Workshop.Edu_Qual != null)
                    AddParameter(oDbCommand, "@Edu_Qual", DbType.String, _EU_Workshop.Edu_Qual);
                else
                    AddParameter(oDbCommand, "@Edu_Qual", DbType.String, DBNull.Value);
               
                if (_EU_Workshop.Company != null)
                    AddParameter(oDbCommand, "@Company", DbType.String, _EU_Workshop.Company);
                else
                    AddParameter(oDbCommand, "@Company", DbType.String, DBNull.Value);
              

                if (_EU_Workshop.Data_Inserted != null)
                    AddParameter(oDbCommand, "@Data_Inserted", DbType.DateTime, _EU_Workshop.Data_Inserted);
                else
                    AddParameter(oDbCommand, "@Data_Inserted", DbType.DateTime, DBNull.Value);


                if (_EU_Workshop.TruckingExt != null)
                    AddParameter(oDbCommand, "@TruckingExt", DbType.String, _EU_Workshop.TruckingExt);
                else
                    AddParameter(oDbCommand, "@TruckingExt", DbType.String, DBNull.Value);



                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



        public int Update_EU_Workshop(EU_Workshop _EU_Workshop)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("EU_Workshop_Update", CommandType.StoredProcedure);

                if (_EU_Workshop.Name != null)
                    AddParameter(oDbCommand, "@Name", DbType.String, _EU_Workshop.Name);
                else
                    AddParameter(oDbCommand, "@Name", DbType.String, DBNull.Value);


                if (_EU_Workshop.Email != null)
                    AddParameter(oDbCommand, "@Email", DbType.String, _EU_Workshop.Email);
                else
                    AddParameter(oDbCommand, "@Email", DbType.String, DBNull.Value);

                if (_EU_Workshop.Phone != null)
                    AddParameter(oDbCommand, "@Phone", DbType.String, _EU_Workshop.Phone);
                else
                    AddParameter(oDbCommand, "@Phone", DbType.String, DBNull.Value);

                if (_EU_Workshop.Designation != null)
                    AddParameter(oDbCommand, "@Designation", DbType.String, _EU_Workshop.Designation);
                else
                    AddParameter(oDbCommand, "@Designation", DbType.String, DBNull.Value);         




                if (_EU_Workshop.Company != null)
                    AddParameter(oDbCommand, "@Company", DbType.String, _EU_Workshop.Company);
                else
                    AddParameter(oDbCommand, "@Company", DbType.String, DBNull.Value);


                if (_EU_Workshop.Edu_Qual != null)
                    AddParameter(oDbCommand, "@Edu_Qual", DbType.String, _EU_Workshop.Edu_Qual);
                else
                    AddParameter(oDbCommand, "@Edu_Qual", DbType.String, DBNull.Value);

                AddParameter(oDbCommand, "@Sl", DbType.Int32, _EU_Workshop.Sl);

                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



        public EU_Workshop Get_EU_WorkshopInfoID(int EU_WorkshopID)
        {
            try
            {
                EU_Workshop objEU_Workshop = new EU_Workshop();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("EU_Workshop_GetById", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@EU_WorkshopID", DbType.Int32, EU_WorkshopID);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    BuildEntityAll(oDbDataReader, objEU_Workshop);
                }
                oDbDataReader.Close();
                return objEU_Workshop;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public EU_Workshop Get_CourseInfoID(String SerialID)
        {
            try
            {
                EU_Workshop objEU_Workshop = new EU_Workshop();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("MOStdinfo_GetById", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@SerialID", DbType.String, SerialID);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    BuildEntityAll(oDbDataReader, objEU_Workshop);
                }
                oDbDataReader.Close();
                return objEU_Workshop;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int EU_EUMOInfo_Delete(int Sl)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("EUMO_InfoDelete", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@Sl", DbType.Int32, Sl);
                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public EU_Workshop GetInfo_TrackingNo(String TrackingNo)
        {
            try
            {
                EU_Workshop objEU_Workshop = new EU_Workshop();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("MOStdinfo_GetByTrackingNo", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@TrackingNo", DbType.String, TrackingNo);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    BuildEntityAll(oDbDataReader, objEU_Workshop);
                }
                oDbDataReader.Close();
                return objEU_Workshop;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public EU_Workshop EU_Workshop_GetTruckingExt(string PostCode)
        {
            try
            {
                EU_Workshop objEU_Workshop = new EU_Workshop();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_WebCode_TruckingExt", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@ObjectCode", DbType.String, PostCode);
                DbDataReader reader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (reader.Read())
                {
                    BuildEntityAll(reader, objEU_Workshop);
                }
                reader.Close();
                return objEU_Workshop;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
