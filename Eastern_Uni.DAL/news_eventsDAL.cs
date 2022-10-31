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
   public class news_eventsDAL
    {
       private void BuildEntity(DbDataReader reader, news_events _news_events)
       {

           _news_events.serial_no = Convert.ToInt32(reader["serial_no"]);

           _news_events.date = reader["date"] is DBNull ? 0 : Convert.ToInt32(reader["date"]);

           if (reader["month"] != DBNull.Value)
               _news_events.month = Convert.ToString(reader["month"]);

           _news_events.year = reader["year"] is DBNull ? 0 : Convert.ToInt32(reader["year"]);

           if (reader["headline"] != DBNull.Value)
               _news_events.headline = Convert.ToString(reader["headline"]);


           if (reader["brief"] != DBNull.Value)
               _news_events.brief = Convert.ToString(reader["brief"]);


           if (reader["PictureLocation"] != DBNull.Value)
               _news_events.PictureLocation = Convert.ToString(reader["PictureLocation"]);


           if (reader["Ref"] != DBNull.Value)
               _news_events.Ref = Convert.ToString(reader["Ref"]);


           if (reader["Posting_date"] != DBNull.Value)
               _news_events.Posting_date = Convert.ToString(reader["Posting_date"]);


           if (reader["details"] != DBNull.Value)
               _news_events.details = Convert.ToString(reader["details"]);

           if (reader["InsertionTime"] != DBNull.Value)
               _news_events.InsertionTime = Convert.ToDateTime(reader["InsertionTime"]);


           if (reader["UpdateTime"] != DBNull.Value)
               _news_events.UpdateTime = Convert.ToDateTime(reader["UpdateTime"]);

           if (reader["UserID"] != DBNull.Value)
               _news_events.UserID = Convert.ToInt32(reader["UserID"]);

           if (reader["UpdateUser"] != DBNull.Value)
               _news_events.UpdateUser = Convert.ToInt32(reader["UpdateUser"]);


           if (reader["HeaderImage"] != DBNull.Value)
               _news_events.HeaderImage = Convert.ToString(reader["HeaderImage"]);






           if (reader["Priority"] != DBNull.Value)
               _news_events.Priority = Convert.ToInt32(reader["Priority"]);

           if (reader["LastView_Date"] != DBNull.Value)
               _news_events.LastView_Date = Convert.ToDateTime(reader["LastView_Date"]);

       }

       public news_events NewsEvents_GetBySl(int serial_no)
       {
           try
           {
               news_events onews_events = new news_events();
               DbCommand oDbCommand = DbProviderHelper.CreateCommand("NewsEvents_GetBySl", CommandType.StoredProcedure);
               AddParameter(oDbCommand, "@serial_no", DbType.Int32, serial_no);
               DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
               while (oDbDataReader.Read())
               {
                   BuildEntity(oDbDataReader, onews_events);
               }
               oDbDataReader.Close();
               return onews_events;
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


       public int NewsEvents_Update(news_events _news_events)
       {

           try
           {
               DbCommand oDbCommand = DbProviderHelper.CreateCommand("news_events_Update", CommandType.StoredProcedure);

               AddParameter(oDbCommand, "@serial_no", DbType.Int32, _news_events.serial_no);

               if (_news_events.date > 0)
                   AddParameter(oDbCommand, "@date", DbType.Int32, _news_events.date);
               else
                   AddParameter(oDbCommand, "@date", DbType.Int32, 0);

               if (_news_events.month != "")
                   AddParameter(oDbCommand, "@month", DbType.String, _news_events.month);
               else
                   AddParameter(oDbCommand, "@month", DbType.String, null);

               if (_news_events.year > 0)
                   AddParameter(oDbCommand, "@year", DbType.Int32, _news_events.year);
               else
                   AddParameter(oDbCommand, "@year", DbType.Int32, 0);


               if (_news_events.headline != "")
                   AddParameter(oDbCommand, "@headline", DbType.String, _news_events.headline);
               else
                   AddParameter(oDbCommand, "@headline", DbType.String, null);

               if (_news_events.brief != "")
                   AddParameter(oDbCommand, "@brief", DbType.String, _news_events.brief);
               else
                   AddParameter(oDbCommand, "@brief", DbType.String, null);

               if (_news_events.PictureLocation != "")
                   AddParameter(oDbCommand, "@PictureLocation", DbType.String, _news_events.PictureLocation);
               else
                   AddParameter(oDbCommand, "@PictureLocation", DbType.String, "");

               if (_news_events.Ref != "")
                   AddParameter(oDbCommand, "@Ref", DbType.String, _news_events.Ref);
               else
                   AddParameter(oDbCommand, "@Ref", DbType.String, "");

               if (_news_events.Posting_date != "")
                   AddParameter(oDbCommand, "@Posting_date", DbType.String, _news_events.Posting_date);
               else
                   AddParameter(oDbCommand, "@Posting_date", DbType.String, "");

               if (_news_events.details != "")
                   AddParameter(oDbCommand, "@details", DbType.String, _news_events.details);
               else
                   AddParameter(oDbCommand, "@details", DbType.String, "");

               // if (_news_events.InsertionTime != null)
               //    AddParameter(oDbCommand, "@InsertionTime", DbType.DateTime, _news_events.InsertionTime);
               //else
               //    AddParameter(oDbCommand, "@InsertionTime", DbType.DateTime, null);

               if (_news_events.UpdateTime != null)
                   AddParameter(oDbCommand, "@UpdateTime", DbType.DateTime, _news_events.UpdateTime);
               else
                   AddParameter(oDbCommand, "@UpdateTime", DbType.DateTime, null);

               //  if (_news_events.UserID > 0)
               //    AddParameter(oDbCommand, "@UserID", DbType.Int32, _news_events.UserID);
               // else
               //    AddParameter(oDbCommand, "@UserID", DbType.Int32, 0);

               if (_news_events.UpdateUser > 0)
                   AddParameter(oDbCommand, "@UpdateUser", DbType.Int32, _news_events.UpdateUser);
               else
                   AddParameter(oDbCommand, "@UpdateUser", DbType.Int32, 0);


               if (_news_events.HeaderImage != "")
                   AddParameter(oDbCommand, "@HeaderImage", DbType.String, _news_events.HeaderImage);
               else
                   AddParameter(oDbCommand, "@HeaderImage", DbType.String, "");



               if (_news_events.Priority > 0)
                   AddParameter(oDbCommand, "@Priority", DbType.Int32, _news_events.Priority);
               else
                   AddParameter(oDbCommand, "@Priority", DbType.Int32, 0);

               if (_news_events.LastView_Date != null)
                   AddParameter(oDbCommand, "@LastView_Date", DbType.DateTime, _news_events.LastView_Date);
               else
                   AddParameter(oDbCommand, "@LastView_Date", DbType.DateTime, null);              

               if (_news_events.Visible != "")
                   AddParameter(oDbCommand, "@Visible", DbType.String, _news_events.Visible);
               else
                   AddParameter(oDbCommand, "@Visible", DbType.String, null);

               return DbProviderHelper.ExecuteNonQuery(oDbCommand);
           }
           catch (Exception ex)
           {
               throw ex;
           }
       }

       public int NewsEvents_Delete(int serial_no)
       {

           try
           {
               DbCommand oDbCommand = DbProviderHelper.CreateCommand("NewsEvents_Delete", CommandType.StoredProcedure);
               AddParameter(oDbCommand, "@serial_no", DbType.Int32, serial_no);
               return DbProviderHelper.ExecuteNonQuery(oDbCommand);
           }
           catch (Exception ex)
           {
               throw ex;
           }
       }
    }
}
