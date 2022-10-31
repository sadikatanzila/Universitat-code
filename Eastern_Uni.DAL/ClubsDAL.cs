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
   public class ClubsDAL
    {
        private void BuildEntity(DbDataReader reader, Clubs _Clubs)
        {

            _Clubs.ClubsID = Convert.ToInt32(reader["ClubsID"]);




            if (reader["Name"] != DBNull.Value)
                _Clubs.Name = Convert.ToString(reader["Name"]);


            if (reader["Details"] != DBNull.Value)
                _Clubs.Details = Convert.ToString(reader["Details"]);


            if (reader["Objectives"] != DBNull.Value)
                _Clubs.Objectives = Convert.ToString(reader["Objectives"]);

            if (reader["Activities"] != DBNull.Value)
                _Clubs.Activities = Convert.ToString(reader["Activities"]);


            if (reader["links"] != DBNull.Value)
                _Clubs.links = Convert.ToString(reader["links"]);

           


            if (reader["InsertionTime"] != DBNull.Value)
                _Clubs.InsertionTime = Convert.ToDateTime(reader["InsertionTime"]);

            if (reader["UpdateTime"] != DBNull.Value)
                _Clubs.UpdateTime = Convert.ToDateTime(reader["UpdateTime"]);

            if (reader["UserID"] != DBNull.Value)
                _Clubs.UserID = Convert.ToInt32(reader["UserID"]);

            if (reader["UpdateUser"] != DBNull.Value)
                _Clubs.UpdateUser = Convert.ToInt32(reader["UpdateUser"]);


        }

        public List<Clubs> Clubs_GetAll()
        {
            try
            {
                List<Clubs> ClubsList = new List<Clubs>();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("Clubs_GetAll", CommandType.StoredProcedure);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    Clubs oClubs = new Clubs();
                    BuildEntity(oDbDataReader, oClubs);
                    ClubsList.Add(oClubs);
                }
                oDbDataReader.Close();
                return ClubsList;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int Clubs_Delete(int ClubsID)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("Clubs_Delete", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@ClubsID", DbType.Int32, ClubsID);
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

        public DataTable LoadClubs_GetAll()
        {
            DataTable dtUser = null;
            DbDataReader oDbDataReader = null;
            try
            {
                dtUser = new DataTable();

                DbCommand oDbCommand = DbProviderHelper.CreateCommand("Clubs_GetAll", CommandType.StoredProcedure);
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


        public int Add_Clubs(Clubs _Clubs)
        {
            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("Add_Clubs", CommandType.StoredProcedure);


                if (_Clubs.Name != null)
                    AddParameter(oDbCommand, "@Name", DbType.String, _Clubs.Name);
                else
                    AddParameter(oDbCommand, "@Name", DbType.String, DBNull.Value);

                if (_Clubs.Details != null)
                    AddParameter(oDbCommand, "@Details", DbType.String, _Clubs.Details);
                else
                    AddParameter(oDbCommand, "@Details", DbType.String, DBNull.Value);

                if (_Clubs.Objectives != null)
                    AddParameter(oDbCommand, "@Objectives", DbType.String, _Clubs.Objectives);
                else
                    AddParameter(oDbCommand, "@Objectives", DbType.String, DBNull.Value);

                if (_Clubs.Activities != null)
                    AddParameter(oDbCommand, "@Activities", DbType.String, _Clubs.Activities);
                else
                    AddParameter(oDbCommand, "@Activities", DbType.String, DBNull.Value);


                if (_Clubs.links != null)
                    AddParameter(oDbCommand, "@links", DbType.String, _Clubs.links);
                else
                    AddParameter(oDbCommand, "@links", DbType.String, DBNull.Value);

               

                


                if (_Clubs.InsertionTime != null)
                    AddParameter(oDbCommand, "@InsertionTime", DbType.DateTime, _Clubs.InsertionTime);
                else
                    AddParameter(oDbCommand, "@InsertionTime", DbType.DateTime, DBNull.Value);

                if (_Clubs.UserID >= 0)
                    AddParameter(oDbCommand, "@UserID", DbType.Int32, _Clubs.UserID);
                else
                    AddParameter(oDbCommand, "@UserID", DbType.Int32, DBNull.Value);






                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



        public int Update_Clubs(Clubs _Clubs)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("Clubs_Update", CommandType.StoredProcedure);

                

                if (_Clubs.Name != null)
                    AddParameter(oDbCommand, "@Name", DbType.String, _Clubs.Name);
                else
                    AddParameter(oDbCommand, "@Name", DbType.String, DBNull.Value);

                if (_Clubs.Objectives != null)
                    AddParameter(oDbCommand, "@Objectives", DbType.String, _Clubs.Objectives);
                else
                    AddParameter(oDbCommand, "@Objectives", DbType.String, DBNull.Value);

                if (_Clubs.Activities != null)
                    AddParameter(oDbCommand, "@Activities", DbType.String, _Clubs.Activities);
                else
                    AddParameter(oDbCommand, "@Activities", DbType.String, DBNull.Value);


                if (_Clubs.links != null)
                    AddParameter(oDbCommand, "@links", DbType.String, _Clubs.links);
                else
                    AddParameter(oDbCommand, "@links", DbType.String, DBNull.Value);

                if (_Clubs.Details != null)
                    AddParameter(oDbCommand, "@Details", DbType.String, _Clubs.Details);
                else
                    AddParameter(oDbCommand, "@Details", DbType.String, DBNull.Value);

                


                if (_Clubs.UpdateTime != null)
                    AddParameter(oDbCommand, "@UpdateTime", DbType.DateTime, _Clubs.UpdateTime);
                else
                    AddParameter(oDbCommand, "@UpdateTime", DbType.DateTime, DBNull.Value);

                if (_Clubs.UpdateUser >= 0)
                    AddParameter(oDbCommand, "@UpdateUser", DbType.Int32, _Clubs.UpdateUser);
                else
                    AddParameter(oDbCommand, "@UpdateUser", DbType.Int32, DBNull.Value);




                AddParameter(oDbCommand, "@ClubsID", DbType.Int32, _Clubs.ClubsID);

                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



        public Clubs Get_ClubsInfoID(int ClubsID)
        {
            try
            {
                Clubs objClubs = new Clubs();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("Clubs_GetById", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@ClubsID", DbType.Int32, ClubsID);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    BuildEntity(oDbDataReader, objClubs);
                }
                oDbDataReader.Close();
                return objClubs;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
