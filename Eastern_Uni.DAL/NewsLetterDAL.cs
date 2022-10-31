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
   public class NewsLetterDAL
    {
        private void BuildEntity(DbDataReader reader, NewsLetter _NewsLetter)
        {

            _NewsLetter.Serial_no = Convert.ToInt32(reader["Serial_no"]);

            if (reader["SemisterID"] != DBNull.Value)
                _NewsLetter.SemisterID = Convert.ToInt32(reader["SemisterID"]);

            if (reader["Day"] != DBNull.Value)
                _NewsLetter.Day = Convert.ToString(reader["Day"]);

            if (reader["Month"] != DBNull.Value)
                _NewsLetter.Month = Convert.ToString(reader["Month"]);

            if (reader["Year"] != DBNull.Value)
                _NewsLetter.Year = Convert.ToString(reader["Year"]);

            if (reader["PictureLocation"] != DBNull.Value)
                _NewsLetter.PictureLocation = Convert.ToString(reader["PictureLocation"]);

            if (reader["Semister"] != DBNull.Value)
                _NewsLetter.Semister = Convert.ToString(reader["Semister"]);

            if (reader["InsertionTime"] != DBNull.Value)
                _NewsLetter.InsertionTime = Convert.ToDateTime(reader["InsertionTime"]);


            if (reader["UpdateTime"] != DBNull.Value)
                _NewsLetter.UpdateTime = Convert.ToDateTime(reader["UpdateTime"]);

            if (reader["UserID"] != DBNull.Value)
                _NewsLetter.UserID = Convert.ToInt32(reader["UserID"]);

            if (reader["UpdateUser"] != DBNull.Value)
                _NewsLetter.UpdateUser = Convert.ToInt32(reader["UpdateUser"]);



        }

        public int Add_NewsLetter(NewsLetter _NewsLetter)
        {
            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("Add_NewsLetter", CommandType.StoredProcedure);




                if (_NewsLetter.SemisterID >= 0)
                    AddParameter(oDbCommand, "@SemisterID", DbType.Int32, _NewsLetter.SemisterID);
                else
                    AddParameter(oDbCommand, "@SemisterID", DbType.Int32, DBNull.Value);

                if (_NewsLetter.Day != null)
                    AddParameter(oDbCommand, "@Day", DbType.String, _NewsLetter.Day);
                else
                    AddParameter(oDbCommand, "@Day", DbType.String, DBNull.Value);

                if (_NewsLetter.Month != null)
                    AddParameter(oDbCommand, "@Month", DbType.String, _NewsLetter.Month);
                else
                    AddParameter(oDbCommand, "@Month", DbType.String, DBNull.Value);
                

                if (_NewsLetter.Year != null)
                    AddParameter(oDbCommand, "@Year", DbType.String, _NewsLetter.Year);
                else
                    AddParameter(oDbCommand, "@Year", DbType.String, DBNull.Value);

               


                if (_NewsLetter.PictureLocation != null)
                    AddParameter(oDbCommand, "@PictureLocation", DbType.String, _NewsLetter.PictureLocation);
                else
                    AddParameter(oDbCommand, "@PictureLocation", DbType.String, DBNull.Value);

               // if (_NewsLetter.Semister != null)
                //    AddParameter(oDbCommand, "@Semister", DbType.String, _NewsLetter.Semister);
               // else
                //    AddParameter(oDbCommand, "@Semister", DbType.String, DBNull.Value);

                if (_NewsLetter.InsertionTime != null)
                    AddParameter(oDbCommand, "@InsertionTime", DbType.DateTime, _NewsLetter.InsertionTime);
                else
                    AddParameter(oDbCommand, "@InsertionTime", DbType.DateTime, null);

                if (_NewsLetter.UserID > 0)
                     AddParameter(oDbCommand, "@UserID", DbType.Int32, _NewsLetter.UserID);
                 else
                    AddParameter(oDbCommand, "@UserID", DbType.Int32, 0);

                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public int Update_NewsLetter(NewsLetter _NewsLetter)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("NewsLetter_Update", CommandType.StoredProcedure);



                if (_NewsLetter.SemisterID >= 0)
                    AddParameter(oDbCommand, "@SemisterID", DbType.Int32, _NewsLetter.SemisterID);
                else
                    AddParameter(oDbCommand, "@SemisterID", DbType.Int32, DBNull.Value);

                if (_NewsLetter.Day != null)
                    AddParameter(oDbCommand, "@Day", DbType.String, _NewsLetter.Day);
                else
                    AddParameter(oDbCommand, "@Day", DbType.String, DBNull.Value);

                if (_NewsLetter.Month != null)
                    AddParameter(oDbCommand, "@Month", DbType.String, _NewsLetter.Month);
                else
                    AddParameter(oDbCommand, "@Month", DbType.String, DBNull.Value);

                if (_NewsLetter.Year != null)
                    AddParameter(oDbCommand, "@Year", DbType.String, _NewsLetter.Year);
                else
                    AddParameter(oDbCommand, "@Year", DbType.String, DBNull.Value);

                if (_NewsLetter.PictureLocation != null)
                    AddParameter(oDbCommand, "@PictureLocation", DbType.String, _NewsLetter.PictureLocation);
                else
                    AddParameter(oDbCommand, "@PictureLocation", DbType.String, DBNull.Value);

               // if (_NewsLetter.Semister != null)
               //     AddParameter(oDbCommand, "@Semister", DbType.String, _NewsLetter.Semister);
               // else
                //    AddParameter(oDbCommand, "@Semister", DbType.String, DBNull.Value);

                if (_NewsLetter.UpdateTime != null)
                    AddParameter(oDbCommand, "@UpdateTime", DbType.DateTime, _NewsLetter.UpdateTime);
                else
                    AddParameter(oDbCommand, "@UpdateTime", DbType.DateTime, null);

                if (_NewsLetter.UpdateUser > 0)
                    AddParameter(oDbCommand, "@UpdateUser", DbType.Int32, _NewsLetter.UpdateUser);
                else
                    AddParameter(oDbCommand, "@UpdateUser", DbType.Int32, 0);

                AddParameter(oDbCommand, "@Serial_no", DbType.Int32, _NewsLetter.Serial_no);

                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }




        public List<NewsLetter> LoadNewsLetter_GetAll()
        {
            try
            {
                List<NewsLetter> NewsLetterList = new List<NewsLetter>();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("NewsLetter_GetAll", CommandType.StoredProcedure);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    NewsLetter oNewsLetter = new NewsLetter();
                    BuildEntity(oDbDataReader, oNewsLetter);
                    NewsLetterList.Add(oNewsLetter);
                }
                oDbDataReader.Close();
                return NewsLetterList;
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

        public NewsLetter Get_NewsLetterInfoById(int Serial_no)
        {
            try
            {
                NewsLetter objNewsLetter = new NewsLetter();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("NewsLetter_GetById", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@Serial_no", DbType.Int64, Serial_no);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    BuildEntity(oDbDataReader, objNewsLetter);
                }
                oDbDataReader.Close();
                return objNewsLetter;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public int NewsLetterDelete(int Serial_no)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("NewsLetterDelete", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@Serial_no", DbType.Int32, Serial_no);
                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        
    }
}
