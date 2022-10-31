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
   public class LatestNewsDAL
    {
        private void BuildEntity(DbDataReader reader, LatestNews _LatestNews)
        {

            _LatestNews.id = Convert.ToInt32(reader["id"]);

            if (reader["Visible"] != DBNull.Value)
                _LatestNews.Visible = Convert.ToString(reader["Visible"]);

            if (reader["date"] != DBNull.Value)
                _LatestNews.date = Convert.ToString(reader["date"]);

            if (reader["headlines"] != DBNull.Value)
                _LatestNews.headlines = Convert.ToString(reader["headlines"]);

            if (reader["brief"] != DBNull.Value)
                _LatestNews.brief = Convert.ToString(reader["brief"]);

            if (reader["PicureLocation"] != DBNull.Value)
                _LatestNews.PicureLocation = Convert.ToString(reader["PicureLocation"]);


            if (reader["Ref"] != DBNull.Value)
                _LatestNews.Ref = Convert.ToString(reader["Ref"]);


            if (reader["Posting_date"] != DBNull.Value)
                _LatestNews.Posting_date = Convert.ToString(reader["Posting_date"]);


            if (reader["details"] != DBNull.Value)
                _LatestNews.details = Convert.ToString(reader["details"]);


            if (reader["InsertionTime"] != DBNull.Value)
                _LatestNews.InsertionTime = Convert.ToDateTime(reader["InsertionTime"]);
           

            if (reader["UpdateTime"] != DBNull.Value)
                _LatestNews.UpdateTime = Convert.ToDateTime(reader["UpdateTime"]);

            if (reader["UserID"] != DBNull.Value)
                _LatestNews.UserID = Convert.ToInt32(reader["UserID"]);

            if (reader["UpdateUser"] != DBNull.Value)
                _LatestNews.UpdateUser = Convert.ToInt32(reader["UpdateUser"]);

            if (reader["Publisher"] != DBNull.Value)
                _LatestNews.Publisher = Convert.ToString(reader["Publisher"]);




            if (reader["TailorDtls"] != DBNull.Value)
                _LatestNews.TailorDtls = Convert.ToString(reader["TailorDtls"]);


            if (reader["FromDate"] != DBNull.Value)
                _LatestNews.FromDate = Convert.ToDateTime(reader["FromDate"]);


            if (reader["ToDate"] != DBNull.Value)
                _LatestNews.ToDate = Convert.ToDateTime(reader["ToDate"]);
        }

        public LatestNews LatestNews_GetBySl(int id)
        {
            try
            {
                LatestNews oLatestNews = new LatestNews();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("LatestNews_GetBySl", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@id", DbType.Int32, id);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    BuildEntity(oDbDataReader, oLatestNews);
                }
                oDbDataReader.Close();
                return oLatestNews;
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


        public int LatestNews_Update(LatestNews _LatestNews)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("LatestNews_Update", CommandType.StoredProcedure);

                AddParameter(oDbCommand, "@id", DbType.Int32, _LatestNews.id);

                if (_LatestNews.Visible != null)
                    AddParameter(oDbCommand, "@Visible", DbType.String, _LatestNews.Visible);
                else
                    AddParameter(oDbCommand, "@Visible", DbType.String, null);

                if (_LatestNews.headlines != null)
                    AddParameter(oDbCommand, "@headlines", DbType.String, _LatestNews.headlines);
                else
                    AddParameter(oDbCommand, "@headlines", DbType.String, null);

                if (_LatestNews.date != null)
                    AddParameter(oDbCommand, "@date", DbType.String, _LatestNews.date);
                else
                    AddParameter(oDbCommand, "@date", DbType.String, null);

                if (_LatestNews.brief != null)
                    AddParameter(oDbCommand, "@brief", DbType.String, _LatestNews.brief);
                else
                    AddParameter(oDbCommand, "@brief", DbType.String, null);

                if (_LatestNews.PicureLocation != null)
                    AddParameter(oDbCommand, "@PicureLocation", DbType.String, _LatestNews.PicureLocation);
                else
                    AddParameter(oDbCommand, "@PicureLocation", DbType.String, null);

                if (_LatestNews.Posting_date != null)
                    AddParameter(oDbCommand, "@Posting_date", DbType.String, _LatestNews.Posting_date);
                else
                    AddParameter(oDbCommand, "@Posting_date", DbType.String, null);

                if (_LatestNews.Ref != null)
                    AddParameter(oDbCommand, "@Ref", DbType.String, _LatestNews.Ref);
                else
                    AddParameter(oDbCommand, "@Ref", DbType.String, null);

                if (_LatestNews.details != null)
                    AddParameter(oDbCommand, "@details", DbType.String, _LatestNews.details);
                else
                    AddParameter(oDbCommand, "@details", DbType.String, null);

               // if (_LatestNews.InsertionTime != null)
                //    AddParameter(oDbCommand, "@InsertionTime", DbType.DateTime, _LatestNews.InsertionTime);
                //else
                //    AddParameter(oDbCommand, "@InsertionTime", DbType.DateTime, null);

                if (_LatestNews.UpdateTime != null)
                    AddParameter(oDbCommand, "@UpdateTime", DbType.DateTime, _LatestNews.UpdateTime);
                else
                    AddParameter(oDbCommand, "@UpdateTime", DbType.DateTime, null);

              //  if (_LatestNews.UserID > 0)
                //    AddParameter(oDbCommand, "@UserID", DbType.Int32, _LatestNews.UserID);
               // else
                //    AddParameter(oDbCommand, "@UserID", DbType.Int32, 0);

                if (_LatestNews.UpdateUser > 0)
                    AddParameter(oDbCommand, "@UpdateUser", DbType.Int32, _LatestNews.UpdateUser);
                else
                    AddParameter(oDbCommand, "@UpdateUser", DbType.Int32, 0);

                if (_LatestNews.Publisher != null)
                    AddParameter(oDbCommand, "@Publisher", DbType.String, _LatestNews.Publisher);
                else
                    AddParameter(oDbCommand, "@Publisher", DbType.String, null);



                if (_LatestNews.FromDate != null)
                    AddParameter(oDbCommand, "@FromDate", DbType.DateTime, _LatestNews.FromDate);
                else
                    AddParameter(oDbCommand, "@FromDate", DbType.DateTime, null);

                if (_LatestNews.ToDate != null)
                    AddParameter(oDbCommand, "@ToDate", DbType.DateTime, _LatestNews.ToDate);
                else
                    AddParameter(oDbCommand, "@ToDate", DbType.DateTime, null);


                if (_LatestNews.TailorDtls != null)
                    AddParameter(oDbCommand, "@TailorDtls", DbType.String, _LatestNews.TailorDtls);
                else
                    AddParameter(oDbCommand, "@TailorDtls", DbType.String, null);


                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int LatestNews_Delete(int id)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("LatestNews_Delete", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@id", DbType.Int32, id);
                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
      
    }
}
