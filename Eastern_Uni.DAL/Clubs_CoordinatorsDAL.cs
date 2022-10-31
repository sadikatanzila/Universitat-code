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
  public  class Clubs_CoordinatorsDAL
    {
        private void BuildEntity(DbDataReader reader, Clubs_Coordinators _Clubs_Coordinators)
        {

            _Clubs_Coordinators.CoordinatosID = Convert.ToInt32(reader["CoordinatosID"]);

            if (reader["ClubsID"] != DBNull.Value)
                _Clubs_Coordinators.ClubsID = Convert.ToInt32(reader["ClubsID"]);

            if (reader["ClubName"] != DBNull.Value)
                _Clubs_Coordinators.ClubName = Convert.ToString(reader["ClubName"]);


            if (reader["Name"] != DBNull.Value)
                _Clubs_Coordinators.Name = Convert.ToString(reader["Name"]);





            if (reader["Designation"] != DBNull.Value)
                _Clubs_Coordinators.Designation = Convert.ToString(reader["Designation"]);

            if (reader["Phone"] != DBNull.Value)
                _Clubs_Coordinators.Phone = Convert.ToString(reader["Phone"]);


            if (reader["Email"] != DBNull.Value)
                _Clubs_Coordinators.Email = Convert.ToString(reader["Email"]);




            if (reader["InsertionTime"] != DBNull.Value)
                _Clubs_Coordinators.InsertionTime = Convert.ToDateTime(reader["InsertionTime"]);

            if (reader["UpdateTime"] != DBNull.Value)
                _Clubs_Coordinators.UpdateTime = Convert.ToDateTime(reader["UpdateTime"]);

            if (reader["UserID"] != DBNull.Value)
                _Clubs_Coordinators.UserID = Convert.ToInt32(reader["UserID"]);

            if (reader["UpdateUser"] != DBNull.Value)
                _Clubs_Coordinators.UpdateUser = Convert.ToInt32(reader["UpdateUser"]);


        }

        public List<Clubs_Coordinators> Clubs_Coordinators_GetAll()
        {
            try
            {
                List<Clubs_Coordinators> Clubs_CoordinatorsList = new List<Clubs_Coordinators>();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("Clubs_Coordinators_GetAll", CommandType.StoredProcedure);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    Clubs_Coordinators oClubs_Coordinators = new Clubs_Coordinators();
                    BuildEntity(oDbDataReader, oClubs_Coordinators);
                    Clubs_CoordinatorsList.Add(oClubs_Coordinators);
                }
                oDbDataReader.Close();
                return Clubs_CoordinatorsList;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int Clubs_Coordinators_Delete(int Clubs_CoordinatorsID)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("Clubs_Coordinators_Delete", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@Clubs_CoordinatorsID", DbType.Int32, Clubs_CoordinatorsID);
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

        public DataTable LoadClubs_Coordinators_GetAll()
        {
            DataTable dtUser = null;
            DbDataReader oDbDataReader = null;
            try
            {
                dtUser = new DataTable();

                DbCommand oDbCommand = DbProviderHelper.CreateCommand("Clubs_Coordinators_GetAll", CommandType.StoredProcedure);
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


        public int Add_Clubs_Coordinators(Clubs_Coordinators _Clubs_Coordinators)
        {
            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("Add_Clubs_Coordinators", CommandType.StoredProcedure);


                if (_Clubs_Coordinators.Name != null)
                    AddParameter(oDbCommand, "@Name", DbType.String, _Clubs_Coordinators.Name);
                else
                    AddParameter(oDbCommand, "@Name", DbType.String, DBNull.Value);

                if (_Clubs_Coordinators.ClubsID != null)
                    AddParameter(oDbCommand, "@ClubsID", DbType.Int32, _Clubs_Coordinators.ClubsID);
                else
                    AddParameter(oDbCommand, "@ClubsID", DbType.Int32, DBNull.Value);

                if (_Clubs_Coordinators.Designation != null)
                    AddParameter(oDbCommand, "@Designation", DbType.String, _Clubs_Coordinators.Designation);
                else
                    AddParameter(oDbCommand, "@Designation", DbType.String, DBNull.Value);

                if (_Clubs_Coordinators.Phone != null)
                    AddParameter(oDbCommand, "@Phone", DbType.String, _Clubs_Coordinators.Phone);
                else
                    AddParameter(oDbCommand, "@Phone", DbType.String, DBNull.Value);


                if (_Clubs_Coordinators.Email != null)
                    AddParameter(oDbCommand, "@Email", DbType.String, _Clubs_Coordinators.Email);
                else
                    AddParameter(oDbCommand, "@Email", DbType.String, DBNull.Value);






                if (_Clubs_Coordinators.InsertionTime != null)
                    AddParameter(oDbCommand, "@InsertionTime", DbType.DateTime, _Clubs_Coordinators.InsertionTime);
                else
                    AddParameter(oDbCommand, "@InsertionTime", DbType.DateTime, DBNull.Value);

                if (_Clubs_Coordinators.UserID >= 0)
                    AddParameter(oDbCommand, "@UserID", DbType.Int32, _Clubs_Coordinators.UserID);
                else
                    AddParameter(oDbCommand, "@UserID", DbType.Int32, DBNull.Value);






                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



        public int Update_Clubs_Coordinators(Clubs_Coordinators _Clubs_Coordinators)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("Clubs_Coordinators_Update", CommandType.StoredProcedure);



                if (_Clubs_Coordinators.Name != null)
                    AddParameter(oDbCommand, "@Name", DbType.String, _Clubs_Coordinators.Name);
                else
                    AddParameter(oDbCommand, "@Name", DbType.String, DBNull.Value);

                if (_Clubs_Coordinators.Designation != null)
                    AddParameter(oDbCommand, "@Designation", DbType.String, _Clubs_Coordinators.Designation);
                else
                    AddParameter(oDbCommand, "@Designation", DbType.String, DBNull.Value);

                if (_Clubs_Coordinators.Phone != null)
                    AddParameter(oDbCommand, "@Phone", DbType.String, _Clubs_Coordinators.Phone);
                else
                    AddParameter(oDbCommand, "@Phone", DbType.String, DBNull.Value);


                if (_Clubs_Coordinators.Email != null)
                    AddParameter(oDbCommand, "@Email", DbType.String, _Clubs_Coordinators.Email);
                else
                    AddParameter(oDbCommand, "@Email", DbType.String, DBNull.Value);

                if (_Clubs_Coordinators.ClubsID != null)
                    AddParameter(oDbCommand, "@ClubsID", DbType.Int32, _Clubs_Coordinators.ClubsID);
                else
                    AddParameter(oDbCommand, "@ClubsID", DbType.Int32, DBNull.Value);




                if (_Clubs_Coordinators.UpdateTime != null)
                    AddParameter(oDbCommand, "@UpdateTime", DbType.DateTime, _Clubs_Coordinators.UpdateTime);
                else
                    AddParameter(oDbCommand, "@UpdateTime", DbType.DateTime, DBNull.Value);

                if (_Clubs_Coordinators.UpdateUser >= 0)
                    AddParameter(oDbCommand, "@UpdateUser", DbType.Int32, _Clubs_Coordinators.UpdateUser);
                else
                    AddParameter(oDbCommand, "@UpdateUser", DbType.Int32, DBNull.Value);




                AddParameter(oDbCommand, "@CoordinatosID", DbType.Int32, _Clubs_Coordinators.CoordinatosID);

                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



        public Clubs_Coordinators Get_Clubs_CoordinatorsInfoID(int Clubs_CoordinatorsID)
        {
            try
            {
                Clubs_Coordinators objClubs_Coordinators = new Clubs_Coordinators();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("Clubs_Coordinators_GetById", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@Clubs_CoordinatorsID", DbType.Int32, Clubs_CoordinatorsID);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    BuildEntity(oDbDataReader, objClubs_Coordinators);
                }
                oDbDataReader.Close();
                return objClubs_Coordinators;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public List<Clubs_Coordinators> Selected_Coordinators(int ClubsID)
        {
            try
            {
                List<Clubs_Coordinators> Clubs_ExecutivesList = new List<Clubs_Coordinators>();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("Selected_ClubsCoordinators", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@ClubsID", DbType.Int32, ClubsID);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    Clubs_Coordinators oClubs_Executives = new Clubs_Coordinators();
                    BuildEntity(oDbDataReader, oClubs_Executives);
                    Clubs_ExecutivesList.Add(oClubs_Executives);
                }
                oDbDataReader.Close();
                return Clubs_ExecutivesList;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


    }
}
