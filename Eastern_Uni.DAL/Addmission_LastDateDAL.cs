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
   public class Addmission_LastDateDAL
    {
        private void BuildEntity(DbDataReader reader, Addmission_LastDate _Addmission_LastDate)
        {

            _Addmission_LastDate.ID = Convert.ToInt32(reader["ID"]);

            if (reader["Admission_TypeID"] != DBNull.Value)
                _Addmission_LastDate.Admission_TypeID = Convert.ToInt32(reader["Admission_TypeID"]);

            if (reader["Admission_SemisterID"] != DBNull.Value)
                _Addmission_LastDate.Admission_SemisterID = Convert.ToInt32(reader["Admission_SemisterID"]);

            if (reader["Admission_Year"] != DBNull.Value)
                _Addmission_LastDate.Admission_Year = Convert.ToString(reader["Admission_Year"]);


            if (reader["App_LastDate"] != DBNull.Value)
                _Addmission_LastDate.App_LastDate = Convert.ToString(reader["App_LastDate"]);

            if (reader["Admission_Date"] != DBNull.Value)
                _Addmission_LastDate.Admission_Date = Convert.ToString(reader["Admission_Date"]);

            if (reader["Admission_Office"] != DBNull.Value)
                _Addmission_LastDate.Admission_Office = Convert.ToString(reader["Admission_Office"]);


            if (reader["Foreigners_Office"] != DBNull.Value)
                _Addmission_LastDate.Foreigners_Office = Convert.ToString(reader["Foreigners_Office"]);

            

            if (reader["Admission_Type"] != DBNull.Value)
                _Addmission_LastDate.Admission_Type = Convert.ToString(reader["Admission_Type"]);


            if (reader["Admission_Semister"] != DBNull.Value)
                _Addmission_LastDate.Admission_Semister = Convert.ToString(reader["Admission_Semister"]);

            if (reader["InsertionTime"] != DBNull.Value)
                _Addmission_LastDate.InsertionTime = Convert.ToDateTime(reader["InsertionTime"]);


            if (reader["UpdateTime"] != DBNull.Value)
                _Addmission_LastDate.UpdateTime = Convert.ToDateTime(reader["UpdateTime"]);

            if (reader["UserID"] != DBNull.Value)
                _Addmission_LastDate.UserID = Convert.ToInt32(reader["UserID"]);

            if (reader["UpdateUser"] != DBNull.Value)
                _Addmission_LastDate.UpdateUser = Convert.ToInt32(reader["UpdateUser"]);

        }

        public int Add_Addmission_LastDate(Addmission_LastDate _Addmission_LastDate)
        {
            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("Add_AddLastDate", CommandType.StoredProcedure);




                if (_Addmission_LastDate.Admission_TypeID >= 0)
                    AddParameter(oDbCommand, "@Admission_TypeID", DbType.Int32, _Addmission_LastDate.Admission_TypeID);
                else
                    AddParameter(oDbCommand, "@Admission_TypeID", DbType.Int32, DBNull.Value);

                if (_Addmission_LastDate.Admission_SemisterID >= 0)
                    AddParameter(oDbCommand, "@Admission_SemisterID", DbType.Int32, _Addmission_LastDate.Admission_SemisterID);
                else
                    AddParameter(oDbCommand, "@Admission_SemisterID", DbType.Int32, DBNull.Value);

                if (_Addmission_LastDate.Admission_Year != null)
                    AddParameter(oDbCommand, "@Admission_Year", DbType.String, _Addmission_LastDate.Admission_Year);
                else
                    AddParameter(oDbCommand, "@Admission_Year", DbType.String, DBNull.Value);

                if (_Addmission_LastDate.App_LastDate != null)
                    AddParameter(oDbCommand, "@App_LastDate", DbType.String, _Addmission_LastDate.App_LastDate);
                else
                    AddParameter(oDbCommand, "@App_LastDate", DbType.String, DBNull.Value);


                if (_Addmission_LastDate.Admission_Date != null)
                    AddParameter(oDbCommand, "@Admission_Date", DbType.String, _Addmission_LastDate.Admission_Date);
                else
                    AddParameter(oDbCommand, "@Admission_Date", DbType.String, DBNull.Value);

                if (_Addmission_LastDate.Admission_Office != null)
                    AddParameter(oDbCommand, "@Admission_Office", DbType.String, _Addmission_LastDate.Admission_Office);
                else
                    AddParameter(oDbCommand, "@Admission_Office", DbType.String, DBNull.Value);

                if (_Addmission_LastDate.Foreigners_Office != null)
                    AddParameter(oDbCommand, "@Foreigners_Office", DbType.String, _Addmission_LastDate.Foreigners_Office);
                else
                    AddParameter(oDbCommand, "@Foreigners_Office", DbType.String, DBNull.Value);



                if (_Addmission_LastDate.InsertionTime != null)
                    AddParameter(oDbCommand, "@InsertionTime", DbType.DateTime, _Addmission_LastDate.InsertionTime);
                else
                    AddParameter(oDbCommand, "@InsertionTime", DbType.DateTime, null);



                if (_Addmission_LastDate.UserID > 0)
                    AddParameter(oDbCommand, "@UserID", DbType.Int32, _Addmission_LastDate.UserID);
                else
                    AddParameter(oDbCommand, "@UserID", DbType.Int32, 0);




                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public int Update_Addmission_LastDate(Addmission_LastDate _Addmission_LastDate)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("AddLastDate_Update", CommandType.StoredProcedure);



                if (_Addmission_LastDate.Admission_TypeID >= 0)
                    AddParameter(oDbCommand, "@Admission_TypeID", DbType.Int32, _Addmission_LastDate.Admission_TypeID);
                else
                    AddParameter(oDbCommand, "@Admission_TypeID", DbType.Int32, DBNull.Value);

                if (_Addmission_LastDate.Admission_SemisterID >= 0)
                    AddParameter(oDbCommand, "@Admission_SemisterID", DbType.Int32, _Addmission_LastDate.Admission_SemisterID);
                else
                    AddParameter(oDbCommand, "@Admission_SemisterID", DbType.Int32, DBNull.Value);


                if (_Addmission_LastDate.Admission_Year != null)
                    AddParameter(oDbCommand, "@Admission_Year", DbType.String, _Addmission_LastDate.Admission_Year);
                else
                    AddParameter(oDbCommand, "@Admission_Year", DbType.String, DBNull.Value);

                if (_Addmission_LastDate.App_LastDate != null)
                    AddParameter(oDbCommand, "@App_LastDate", DbType.String, _Addmission_LastDate.App_LastDate);
                else
                    AddParameter(oDbCommand, "@App_LastDate", DbType.String, DBNull.Value);


                if (_Addmission_LastDate.Admission_Date != null)
                    AddParameter(oDbCommand, "@Admission_Date", DbType.String, _Addmission_LastDate.Admission_Date);
                else
                    AddParameter(oDbCommand, "@Admission_Date", DbType.String, DBNull.Value);

                if (_Addmission_LastDate.Admission_Office != null)
                    AddParameter(oDbCommand, "@Admission_Office", DbType.String, _Addmission_LastDate.Admission_Office);
                else
                    AddParameter(oDbCommand, "@Admission_Office", DbType.String, DBNull.Value);

                if (_Addmission_LastDate.Foreigners_Office != null)
                    AddParameter(oDbCommand, "@Foreigners_Office", DbType.String, _Addmission_LastDate.Foreigners_Office);
                else
                    AddParameter(oDbCommand, "@Foreigners_Office", DbType.String, DBNull.Value);


                if (_Addmission_LastDate.UpdateTime != null)
                    AddParameter(oDbCommand, "@UpdateTime", DbType.DateTime, _Addmission_LastDate.UpdateTime);
                else
                    AddParameter(oDbCommand, "@UpdateTime", DbType.DateTime, null);

                if (_Addmission_LastDate.UpdateUser > 0)
                    AddParameter(oDbCommand, "@UpdateUser", DbType.Int32, _Addmission_LastDate.UpdateUser);
                else
                    AddParameter(oDbCommand, "@UpdateUser", DbType.Int32, 0);

                AddParameter(oDbCommand, "@ID", DbType.Int32, _Addmission_LastDate.ID);

                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }




        public List<Addmission_LastDate> LoadAddmission_LastDate_GetAll()
        {
            try
            {
                List<Addmission_LastDate> Addmission_LastDateList = new List<Addmission_LastDate>();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("AddLastDateInfo_GetAll", CommandType.StoredProcedure);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    Addmission_LastDate oAddmission_LastDate = new Addmission_LastDate();
                    BuildEntity(oDbDataReader, oAddmission_LastDate);
                    Addmission_LastDateList.Add(oAddmission_LastDate);
                }
                oDbDataReader.Close();
                return Addmission_LastDateList;
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

        public Addmission_LastDate Get_StntInfoById(int ID)
        {
            try
            {
                Addmission_LastDate objAddmission_LastDate = new Addmission_LastDate();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("AddLastDate_GetById", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@ID", DbType.Int64, ID);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    BuildEntity(oDbDataReader, objAddmission_LastDate);
                }
                oDbDataReader.Close();
                return objAddmission_LastDate;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public int Addmission_LastDateDelete(int ID)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("AddLastDateDelete", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@ID", DbType.Int32, ID);
                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



    }
}
