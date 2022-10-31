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
  public  class MathOlympiadDAL
    {
        private void BuildEntityAll(DbDataReader reader, MathOlympiad _MathOlympiad)
        {

            _MathOlympiad.Sl = Convert.ToInt32(reader["Sl"]);

            if (reader["Name"] != DBNull.Value)
                _MathOlympiad.Name = Convert.ToString(reader["Name"]);

            if (reader["Email"] != DBNull.Value)
                _MathOlympiad.Email = Convert.ToString(reader["Email"]);

            if (reader["Cell"] != DBNull.Value)
                _MathOlympiad.Cell = Convert.ToString(reader["Cell"]);

            if (reader["StudentID"] != DBNull.Value)
                _MathOlympiad.StudentID = Convert.ToString(reader["StudentID"]);

            if (reader["Year"] != DBNull.Value)
                _MathOlympiad.Year = Convert.ToString(reader["Year"]);

            if (reader["Institution"] != DBNull.Value)
                _MathOlympiad.Institution = Convert.ToString(reader["Institution"]);


            if (reader["SSC_Olevel"] != DBNull.Value)
                _MathOlympiad.SSC_Olevel = Convert.ToString(reader["SSC_Olevel"]);

            if (reader["Roll"] != DBNull.Value)
                _MathOlympiad.Roll = Convert.ToString(reader["Roll"]);


            if (reader["Registration"] != DBNull.Value)
                _MathOlympiad.Registration = Convert.ToString(reader["Registration"]);

            if (reader["GPA"] != DBNull.Value)
                _MathOlympiad.GPA = Convert.ToString(reader["GPA"]);


            if (reader["PicLocation"] != DBNull.Value)
                _MathOlympiad.PicLocation = Convert.ToString(reader["PicLocation"]);





            if (reader["DataInsert_Time"] != DBNull.Value)
                _MathOlympiad.DataInsert_Time = Convert.ToDateTime(reader["DataInsert_Time"]);


            if (reader["Board"] != DBNull.Value)
                _MathOlympiad.Board = Convert.ToString(reader["Board"]);

            if (reader["InsertionTime"] != DBNull.Value)
                _MathOlympiad.InsertionTime = Convert.ToDateTime(reader["InsertionTime"]);


            if (reader["UpdateTime"] != DBNull.Value)
                _MathOlympiad.UpdateTime = Convert.ToDateTime(reader["UpdateTime"]);

            if (reader["UserID"] != DBNull.Value)
                _MathOlympiad.UserID = Convert.ToInt32(reader["UserID"]);

            if (reader["UpdateUser"] != DBNull.Value)
                _MathOlympiad.UpdateUser = Convert.ToInt32(reader["UpdateUser"]);


            if (reader["TruckingExt"] != DBNull.Value)
                _MathOlympiad.TruckingExt = Convert.ToString(reader["TruckingExt"]);

            if (reader["Deleted"] != DBNull.Value)
                _MathOlympiad.Deleted = Convert.ToInt32(reader["Deleted"]);
        }

        public List<MathOlympiad> MathOlympiad_GetAll()
        {
            try
            {
                List<MathOlympiad> MathOlympiadList = new List<MathOlympiad>();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("MathOlympiad_GetAll", CommandType.StoredProcedure);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    MathOlympiad oMathOlympiad = new MathOlympiad();
                    BuildEntityAll(oDbDataReader, oMathOlympiad);
                    MathOlympiadList.Add(oMathOlympiad);
                }
                oDbDataReader.Close();
                return MathOlympiadList;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int MathOlympiad_Delete(int MathOlympiadID)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("MathOlympiad_Delete", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@MathOlympiadID", DbType.Int32, MathOlympiadID);
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

        public DataTable LoadMathOlympiad_GetAll()
        {
            DataTable dtUser = null;
            DbDataReader oDbDataReader = null;
            try
            {
                dtUser = new DataTable();

                DbCommand oDbCommand = DbProviderHelper.CreateCommand("MathOlympiad_GetAll", CommandType.StoredProcedure);
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


        public int Add_MathOlympiad(MathOlympiad _MathOlympiad)
        {
            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("Add_MathOlympiad", CommandType.StoredProcedure);



                if (_MathOlympiad.Name != null)
                    AddParameter(oDbCommand, "@Name", DbType.String, _MathOlympiad.Name);
                else
                    AddParameter(oDbCommand, "@Name", DbType.String, DBNull.Value);


                if (_MathOlympiad.Email != null)
                    AddParameter(oDbCommand, "@Email", DbType.String, _MathOlympiad.Email);
                else
                    AddParameter(oDbCommand, "@Email", DbType.String, DBNull.Value);

                if (_MathOlympiad.Cell != null)
                    AddParameter(oDbCommand, "@Cell", DbType.String, _MathOlympiad.Cell);
                else
                    AddParameter(oDbCommand, "@Cell", DbType.String, DBNull.Value);

                if (_MathOlympiad.StudentID != null)
                    AddParameter(oDbCommand, "@StudentID", DbType.String, _MathOlympiad.StudentID);
                else
                    AddParameter(oDbCommand, "@StudentID", DbType.String, DBNull.Value);


                if (_MathOlympiad.Institution != null)
                    AddParameter(oDbCommand, "@Institution", DbType.String, _MathOlympiad.Institution);
                else
                    AddParameter(oDbCommand, "@Institution", DbType.String, DBNull.Value);


                if (_MathOlympiad.SSC_Olevel != null)
                    AddParameter(oDbCommand, "@SSC_Olevel", DbType.String, _MathOlympiad.SSC_Olevel);
                else
                    AddParameter(oDbCommand, "@SSC_Olevel", DbType.String, DBNull.Value);

                if (_MathOlympiad.Year != null)
                    AddParameter(oDbCommand, "@Year", DbType.String, _MathOlympiad.Year);
                else
                    AddParameter(oDbCommand, "@Year", DbType.String, DBNull.Value);


                


                if (_MathOlympiad.Roll != null)
                    AddParameter(oDbCommand, "@Roll", DbType.String, _MathOlympiad.Roll);
                else
                    AddParameter(oDbCommand, "@Roll", DbType.String, DBNull.Value);


                if (_MathOlympiad.Registration != null)
                    AddParameter(oDbCommand, "@Registration", DbType.String, _MathOlympiad.Registration);
                else
                    AddParameter(oDbCommand, "@Registration", DbType.String, DBNull.Value);

                if (_MathOlympiad.GPA != null)
                    AddParameter(oDbCommand, "@GPA", DbType.String, _MathOlympiad.GPA);
                else
                    AddParameter(oDbCommand, "@GPA", DbType.String, DBNull.Value);

                if (_MathOlympiad.PicLocation != null)
                    AddParameter(oDbCommand, "@PicLocation", DbType.String, _MathOlympiad.PicLocation);
                else
                    AddParameter(oDbCommand, "@PicLocation", DbType.String, DBNull.Value);



                if (_MathOlympiad.Board != null)
                    AddParameter(oDbCommand, "@Board", DbType.String, _MathOlympiad.Board);
                else
                    AddParameter(oDbCommand, "@Board", DbType.String, DBNull.Value);

                if (_MathOlympiad.DataInsert_Time != null)
                    AddParameter(oDbCommand, "@DataInsert_Time", DbType.DateTime, _MathOlympiad.DataInsert_Time);
                else
                    AddParameter(oDbCommand, "@DataInsert_Time", DbType.DateTime, DBNull.Value);




                if (_MathOlympiad.TruckingExt != null)
                    AddParameter(oDbCommand, "@TruckingExt", DbType.String, _MathOlympiad.TruckingExt);
                else
                    AddParameter(oDbCommand, "@TruckingExt", DbType.String, DBNull.Value);

                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



        public int Update_MathOlympiad(MathOlympiad _MathOlympiad)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("MathOlympiad_Update", CommandType.StoredProcedure);

                if (_MathOlympiad.Name != null)
                    AddParameter(oDbCommand, "@Name", DbType.String, _MathOlympiad.Name);
                else
                    AddParameter(oDbCommand, "@Name", DbType.String, DBNull.Value);


                if (_MathOlympiad.Email != null)
                    AddParameter(oDbCommand, "@Email", DbType.String, _MathOlympiad.Email);
                else
                    AddParameter(oDbCommand, "@Email", DbType.String, DBNull.Value);

                if (_MathOlympiad.Cell != null)
                    AddParameter(oDbCommand, "@Cell", DbType.String, _MathOlympiad.Cell);
                else
                    AddParameter(oDbCommand, "@Cell", DbType.String, DBNull.Value);

                if (_MathOlympiad.StudentID != null)
                    AddParameter(oDbCommand, "@StudentID", DbType.String, _MathOlympiad.StudentID);
                else
                    AddParameter(oDbCommand, "@StudentID", DbType.String, DBNull.Value);

                if (_MathOlympiad.SSC_Olevel != null)
                    AddParameter(oDbCommand, "@SSC_Olevel", DbType.String, _MathOlympiad.SSC_Olevel);
                else
                    AddParameter(oDbCommand, "@SSC_Olevel", DbType.String, DBNull.Value);

                if (_MathOlympiad.Roll != null)
                    AddParameter(oDbCommand, "@Roll", DbType.String, _MathOlympiad.Roll);
                else
                    AddParameter(oDbCommand, "@Roll", DbType.String, DBNull.Value);


                if (_MathOlympiad.Registration != null)
                    AddParameter(oDbCommand, "@Registration", DbType.String, _MathOlympiad.Registration);
                else
                    AddParameter(oDbCommand, "@Registration", DbType.String, DBNull.Value);

                if (_MathOlympiad.GPA != null)
                    AddParameter(oDbCommand, "@GPA", DbType.String, _MathOlympiad.GPA);
                else
                    AddParameter(oDbCommand, "@GPA", DbType.String, DBNull.Value);

                


                if (_MathOlympiad.Year != null)
                    AddParameter(oDbCommand, "@Year", DbType.String, _MathOlympiad.Year);
                else
                    AddParameter(oDbCommand, "@Year", DbType.String, DBNull.Value);


                if (_MathOlympiad.Institution != null)
                    AddParameter(oDbCommand, "@Institution", DbType.String, _MathOlympiad.Institution);
                else
                    AddParameter(oDbCommand, "@Institution", DbType.String, DBNull.Value);


                if (_MathOlympiad.PicLocation != null)
                    AddParameter(oDbCommand, "@PicLocation", DbType.String, _MathOlympiad.PicLocation);
                else
                    AddParameter(oDbCommand, "@PicLocation", DbType.String, DBNull.Value); 

                AddParameter(oDbCommand, "@Sl", DbType.Int32, _MathOlympiad.Sl);

                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



        public MathOlympiad Get_MathOlympiadInfoID(int MathOlympiadID)
        {
            try
            {
                MathOlympiad objMathOlympiad = new MathOlympiad();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("MathOlympiad_GetById", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@MathOlympiadID", DbType.Int32, MathOlympiadID);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    BuildEntityAll(oDbDataReader, objMathOlympiad);
                }
                oDbDataReader.Close();
                return objMathOlympiad;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public MathOlympiad Get_CourseInfoID(String SerialID)
        {
            try
            {
                MathOlympiad objMathOlympiad = new MathOlympiad();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("MOStdinfo_GetById", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@SerialID", DbType.String, SerialID);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    BuildEntityAll(oDbDataReader, objMathOlympiad);
                }
                oDbDataReader.Close();
                return objMathOlympiad;
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

        public MathOlympiad GetInfo_TrackingNo(String TrackingNo)
        {
            try
            {
                MathOlympiad objMathOlympiad = new MathOlympiad();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("MOStdinfo_GetByTrackingNo", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@TrackingNo", DbType.String, TrackingNo);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    BuildEntityAll(oDbDataReader, objMathOlympiad);
                }
                oDbDataReader.Close();
                return objMathOlympiad;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public MathOlympiad MathOlympiad_GetTruckingExt(string PostCode)
        {
            try
            {
                MathOlympiad objMathOlympiad = new MathOlympiad();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_WebCode_TruckingExt", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@ObjectCode", DbType.String, PostCode);
                DbDataReader reader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (reader.Read())
                {
                    BuildEntityAll(reader, objMathOlympiad);
                }
                reader.Close();
                return objMathOlympiad;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
