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
  public  class EU_UpcomingEventsDAL
    {

        private void BuildEntityAll(DbDataReader reader, EU_UpcomingEvents _EU_UpcomingEvents)
        {

            _EU_UpcomingEvents.EventsID = Convert.ToInt32(reader["EventsID"]);

            if (reader["ClubsID"] != DBNull.Value)
                _EU_UpcomingEvents.ClubsID = Convert.ToInt32(reader["ClubsID"]);

            if (reader["Name"] != DBNull.Value)
                _EU_UpcomingEvents.Name = Convert.ToString(reader["Name"]);

            if (reader["Headline"] != DBNull.Value)
                _EU_UpcomingEvents.Headline = Convert.ToString(reader["Headline"]);

            if (reader["Details"] != DBNull.Value)
                _EU_UpcomingEvents.Details = Convert.ToString(reader["Details"]);

            if (reader["PictureLocation"] != DBNull.Value)
                _EU_UpcomingEvents.PictureLocation = Convert.ToString(reader["PictureLocation"]);

            if (reader["Mail"] != DBNull.Value)
                _EU_UpcomingEvents.Mail = Convert.ToString(reader["Mail"]);

            if (reader["FromDate"] != DBNull.Value)
                _EU_UpcomingEvents.FromDate = Convert.ToDateTime(reader["FromDate"]);

            if (reader["ToDate"] != DBNull.Value)
                _EU_UpcomingEvents.ToDate = Convert.ToDateTime(reader["ToDate"]);

            if (reader["Remarks"] != DBNull.Value)
                _EU_UpcomingEvents.Remarks = Convert.ToString(reader["Remarks"]);

            if (reader["Time"] != DBNull.Value)
                _EU_UpcomingEvents.Time = Convert.ToString(reader["Time"]);

            if (reader["Venue"] != DBNull.Value)
                _EU_UpcomingEvents.Venue = Convert.ToString(reader["Venue"]);

            if (reader["Organized_by"] != DBNull.Value)
                _EU_UpcomingEvents.Organized_by = Convert.ToString(reader["Organized_by"]);


            if (reader["SliderImage"] != DBNull.Value)
                _EU_UpcomingEvents.SliderImage = Convert.ToString(reader["SliderImage"]);

        }


        public List<EU_UpcomingEvents> LoadEU_UpcomingEvents_GetAll()
        {
            try
            {
                List<EU_UpcomingEvents> EU_UpcomingEventsList = new List<EU_UpcomingEvents>();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("EU_UpcomingEventsGetAll", CommandType.StoredProcedure);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    EU_UpcomingEvents oEU_UpcomingEvents = new EU_UpcomingEvents();
                    BuildEntityAll(oDbDataReader, oEU_UpcomingEvents);
                    EU_UpcomingEventsList.Add(oEU_UpcomingEvents);
                }
                oDbDataReader.Close();
                return EU_UpcomingEventsList;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public DataTable EU_UpcomingEventsInfo_GetAll()
        {
            DataTable dtUser = null;
            DbDataReader oDbDataReader = null;
            try
            {
                dtUser = new DataTable();

                DbCommand oDbCommand = DbProviderHelper.CreateCommand("EU_UpcomingEventsInfo_GetAll", CommandType.StoredProcedure);
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

        private void AddParameter(DbCommand oDbCommand, string parameterName, DbType dbType, object value)
        {
            oDbCommand.Parameters.Add(DbProviderHelper.CreateParameter(parameterName, dbType, value));
        }


        public int Add_EU_UpcomingEvents(EU_UpcomingEvents _EU_UpcomingEvents)
        {
            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("Add_EU_UpcomingEvents", CommandType.StoredProcedure);



                if (_EU_UpcomingEvents.ClubsID >= 0)
                    AddParameter(oDbCommand, "@ClubsID", DbType.Int32, _EU_UpcomingEvents.ClubsID);
                else
                    AddParameter(oDbCommand, "@ClubsID", DbType.Int32, DBNull.Value);

                if (_EU_UpcomingEvents.Organized_by != null)
                    AddParameter(oDbCommand, "@Organized_by", DbType.String, _EU_UpcomingEvents.Organized_by);
                 else
                    AddParameter(oDbCommand, "@Organized_by", DbType.String, DBNull.Value);

                if (_EU_UpcomingEvents.Headline != null)
                    AddParameter(oDbCommand, "@Headline", DbType.String, _EU_UpcomingEvents.Headline);
                else
                    AddParameter(oDbCommand, "@Headline", DbType.String, DBNull.Value);

                if (_EU_UpcomingEvents.Details != null)
                    AddParameter(oDbCommand, "@Details", DbType.String, _EU_UpcomingEvents.Details);
                else
                    AddParameter(oDbCommand, "@Details", DbType.String, DBNull.Value);

                if (_EU_UpcomingEvents.Mail != null)
                    AddParameter(oDbCommand, "@Mail", DbType.String, _EU_UpcomingEvents.Mail);
                else
                    AddParameter(oDbCommand, "@Mail", DbType.String, DBNull.Value);


                if (_EU_UpcomingEvents.PictureLocation != null)
                    AddParameter(oDbCommand, "@PictureLocation", DbType.String, _EU_UpcomingEvents.PictureLocation);
                else
                    AddParameter(oDbCommand, "@PictureLocation", DbType.String, DBNull.Value);





                if (_EU_UpcomingEvents.FromDate != null)
                    AddParameter(oDbCommand, "@FromDate", DbType.DateTime, _EU_UpcomingEvents.FromDate);
                else
                    AddParameter(oDbCommand, "@FromDate", DbType.DateTime, DBNull.Value);


                if (_EU_UpcomingEvents.ToDate != null)
                    AddParameter(oDbCommand, "@ToDate", DbType.DateTime, _EU_UpcomingEvents.ToDate);
                else
                    AddParameter(oDbCommand, "@ToDate", DbType.DateTime, DBNull.Value);

                if (_EU_UpcomingEvents.Remarks != null)
                    AddParameter(oDbCommand, "@Remarks", DbType.String, _EU_UpcomingEvents.Remarks);
                else
                    AddParameter(oDbCommand, "@Remarks", DbType.String, DBNull.Value);


                if (_EU_UpcomingEvents.Time != null)
                    AddParameter(oDbCommand, "@Time", DbType.String, _EU_UpcomingEvents.Time);
                else
                    AddParameter(oDbCommand, "@Time", DbType.String, DBNull.Value);

                if (_EU_UpcomingEvents.Venue != null)
                    AddParameter(oDbCommand, "@Venue", DbType.String, _EU_UpcomingEvents.Venue);
                else
                    AddParameter(oDbCommand, "@Venue", DbType.String, DBNull.Value);


                if (_EU_UpcomingEvents.SliderImage != null)
                    AddParameter(oDbCommand, "@SliderImage", DbType.String, _EU_UpcomingEvents.SliderImage);
                else
                    AddParameter(oDbCommand, "@SliderImage", DbType.String, DBNull.Value);

                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
     


       

        public EU_UpcomingEvents Get_StntInfoById(int EventsID)
        {
            try
            {
                EU_UpcomingEvents objEU_UpcomingEvents = new EU_UpcomingEvents();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("EU_UpcomingEventsInfo_GetById", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@EventsID", DbType.Int64, EventsID);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    BuildEntityAll(oDbDataReader, objEU_UpcomingEvents);
                }
                oDbDataReader.Close();
                return objEU_UpcomingEvents;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public int EU_UpcomingEvents_Delete(int EventsID)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("EU_UpcomingEventsDelete", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@EventsID", DbType.Int32, EventsID);
                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

       

        public int Update_EU_UpcomingEvents(EU_UpcomingEvents _EU_UpcomingEvents)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("EU_UpcomingEvents_Update", CommandType.StoredProcedure);



                if (_EU_UpcomingEvents.ClubsID >= 0)
                    AddParameter(oDbCommand, "@ClubsID", DbType.Int32, _EU_UpcomingEvents.ClubsID);
                else
                    AddParameter(oDbCommand, "@ClubsID", DbType.Int32, DBNull.Value);

                if (_EU_UpcomingEvents.Organized_by != null)
                    AddParameter(oDbCommand, "@Organized_by", DbType.String, _EU_UpcomingEvents.Organized_by);
                else
                    AddParameter(oDbCommand, "@Organized_by", DbType.String, DBNull.Value);

                if (_EU_UpcomingEvents.Headline != null)
                    AddParameter(oDbCommand, "@Headline", DbType.String, _EU_UpcomingEvents.Headline);
                else
                    AddParameter(oDbCommand, "@Headline", DbType.String, DBNull.Value);

                if (_EU_UpcomingEvents.Details != null)
                    AddParameter(oDbCommand, "@Details", DbType.String, _EU_UpcomingEvents.Details);
                else
                    AddParameter(oDbCommand, "@Details", DbType.String, DBNull.Value);

                if (_EU_UpcomingEvents.Mail != null)
                    AddParameter(oDbCommand, "@Mail", DbType.String, _EU_UpcomingEvents.Mail);
                else
                    AddParameter(oDbCommand, "@Mail", DbType.String, DBNull.Value);


                if (_EU_UpcomingEvents.PictureLocation != null)
                    AddParameter(oDbCommand, "@PictureLocation", DbType.String, _EU_UpcomingEvents.PictureLocation);
                else
                    AddParameter(oDbCommand, "@PictureLocation", DbType.String, DBNull.Value);


                if (_EU_UpcomingEvents.FromDate != null)
                    AddParameter(oDbCommand, "@FromDate", DbType.DateTime, _EU_UpcomingEvents.FromDate);
                else
                    AddParameter(oDbCommand, "@FromDate", DbType.DateTime, DBNull.Value);


                if (_EU_UpcomingEvents.ToDate != null)
                    AddParameter(oDbCommand, "@ToDate", DbType.DateTime, _EU_UpcomingEvents.ToDate);
                else
                    AddParameter(oDbCommand, "@ToDate", DbType.DateTime, DBNull.Value);

                if (_EU_UpcomingEvents.Remarks != null)
                    AddParameter(oDbCommand, "@Remarks", DbType.String, _EU_UpcomingEvents.Remarks);
                else
                    AddParameter(oDbCommand, "@Remarks", DbType.String, DBNull.Value);

                if (_EU_UpcomingEvents.Time != null)
                    AddParameter(oDbCommand, "@Time", DbType.String, _EU_UpcomingEvents.Time);
                else
                    AddParameter(oDbCommand, "@Time", DbType.String, DBNull.Value);

                if (_EU_UpcomingEvents.Venue != null)
                    AddParameter(oDbCommand, "@Venue", DbType.String, _EU_UpcomingEvents.Venue);
                else
                    AddParameter(oDbCommand, "@Venue", DbType.String, DBNull.Value);

                if (_EU_UpcomingEvents.SliderImage != null)
                    AddParameter(oDbCommand, "@SliderImage", DbType.String, _EU_UpcomingEvents.SliderImage);
                else
                    AddParameter(oDbCommand, "@SliderImage", DbType.String, DBNull.Value);
             

                AddParameter(oDbCommand, "@EventsID", DbType.Int32, _EU_UpcomingEvents.EventsID);


                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



      /*
        public DataTable match_course_Name(DateTime Current_Time)
        {
            DataTable dtUser = null;
            DbDataReader oDbDataReader = null;
            try
            {
                dtUser = new DataTable();

                DbCommand oDbCommand = DbProviderHelper.CreateCommand("EU_UpcomingEventsInfo_GetAll", CommandType.StoredProcedure);
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
            
            
            string sql = @" select COUNT(latestnews.id) Count_Num from latestnews  ToDate  >  = '" + Current_Time + "'  order by id desc   ";

            return obj_db.get_viewData(sql, "Courselist");
        }
       * 
       * */
    }
}
