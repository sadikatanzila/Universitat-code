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
   public class GPA_RegistrationDAL
    {
        private void BuildEntityAll(DbDataReader reader, GPA_Registration _GPA_Registration)
        {

            _GPA_Registration.Sl = Convert.ToInt32(reader["Sl"]);

            if (reader["Name"] != DBNull.Value)
                _GPA_Registration.Name = Convert.ToString(reader["Name"]);

            if (reader["FatherName"] != DBNull.Value)
                _GPA_Registration.FatherName = Convert.ToString(reader["FatherName"]);

            if (reader["MotherName"] != DBNull.Value)
                _GPA_Registration.MotherName = Convert.ToString(reader["MotherName"]);


            if (reader["Institution"] != DBNull.Value)
                _GPA_Registration.Institution = Convert.ToString(reader["Institution"]);

            if (reader["HSC_Year"] != DBNull.Value)
                _GPA_Registration.HSC_Year = Convert.ToString(reader["HSC_Year"]);


            if (reader["Subject"] != DBNull.Value)
                _GPA_Registration.Subject = Convert.ToString(reader["Subject"]);

            if (reader["Roll"] != DBNull.Value)
                _GPA_Registration.Roll = Convert.ToString(reader["Roll"]);

            if (reader["Board"] != DBNull.Value)
                _GPA_Registration.Board = Convert.ToString(reader["Board"]);

            if (reader["Pre_Address"] != DBNull.Value)
                _GPA_Registration.Pre_Address = Convert.ToString(reader["Pre_Address"]);

            if (reader["MobileNo"] != DBNull.Value)
                _GPA_Registration.MobileNo = Convert.ToString(reader["MobileNo"]);

            if (reader["Email"] != DBNull.Value)
                _GPA_Registration.Email = Convert.ToString(reader["Email"]);

            if (reader["GPA"] != DBNull.Value)
                _GPA_Registration.GPA = Convert.ToString(reader["GPA"]);




            if (reader["TruckingExt"] != DBNull.Value)
                _GPA_Registration.TruckingExt = Convert.ToString(reader["TruckingExt"]);

            if (reader["Deleted"] != DBNull.Value)
                _GPA_Registration.Deleted = Convert.ToInt32(reader["Deleted"]);


            if (reader["RegNo"] != DBNull.Value)
                _GPA_Registration.RegNo = Convert.ToString(reader["RegNo"]);






            if (reader["DataInsert_Time"] != DBNull.Value)
                _GPA_Registration.DataInsert_Time = Convert.ToDateTime(reader["DataInsert_Time"]);

            if (reader["InsertionTime"] != DBNull.Value)
                _GPA_Registration.InsertionTime = Convert.ToDateTime(reader["InsertionTime"]);


            if (reader["UpdateTime"] != DBNull.Value)
                _GPA_Registration.UpdateTime = Convert.ToDateTime(reader["UpdateTime"]);

            if (reader["UserID"] != DBNull.Value)
                _GPA_Registration.UserID = Convert.ToInt32(reader["UserID"]);

            if (reader["UpdateUser"] != DBNull.Value)
                _GPA_Registration.UpdateUser = Convert.ToInt32(reader["UpdateUser"]);


            if (reader["Event"] != DBNull.Value)
                _GPA_Registration.Event = Convert.ToString(reader["Event"]);
        }

        public List<GPA_Registration> GPA_Registration_GetAll()
        {
            try
            {
                List<GPA_Registration> GPA_RegistrationList = new List<GPA_Registration>();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("GPA_Registration_GetAll", CommandType.StoredProcedure);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    GPA_Registration oGPA_Registration = new GPA_Registration();
                    BuildEntityAll(oDbDataReader, oGPA_Registration);
                    GPA_RegistrationList.Add(oGPA_Registration);
                }
                oDbDataReader.Close();
                return GPA_RegistrationList;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int GPA_Registration_Delete(int GPA_RegistrationID)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("GPA_Registration_Delete", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@GPA_RegistrationID", DbType.Int32, GPA_RegistrationID);
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

        private DataTable Registration_GetAll(string storeProcedure)
        {
            DataTable table = new DataTable();
            try
            {
                // DbConnection conn_st=ge;
                DbCommand command = DbProviderHelper.CreateCommand(storeProcedure, CommandType.StoredProcedure);
                DbDataAdapter adapter = DbProviderHelper.CreateDataAdapter(command);
                adapter.Fill(table);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            finally
            {
                table.Dispose();
            }
            return table;
        }

        public GPA_Registration GetInfo_TrackingNo(String TrackingNo)
        {
            try
            {
                GPA_Registration objGPA_Registration = new GPA_Registration();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("GPAStdinfo_GetByTrackingNo", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@TrackingNo", DbType.String, TrackingNo);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    BuildEntityAll(oDbDataReader, objGPA_Registration);
                }
                oDbDataReader.Close();
                return objGPA_Registration;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public DataTable LoadGPA_Registration_GetAll()
        {
            DataTable dtUser = null;
            DbDataReader oDbDataReader = null;
            try
            {
                dtUser = new DataTable();

                DbCommand oDbCommand = DbProviderHelper.CreateCommand("GPA_Registration_GetAll", CommandType.StoredProcedure);
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


        public DataTable LoadGPA_Registration_GetAllNew()
        {
            DataTable dtUser = null;
            DbDataReader oDbDataReader = null;
            try
            {
                dtUser = new DataTable();

                DbCommand oDbCommand = DbProviderHelper.CreateCommand("GPA_Registration_GetAllNew", CommandType.StoredProcedure);
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


        public int Add_GPA_Registration(GPA_Registration _GPA_Registration)
        {
            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("Add_GPA_Registration", CommandType.StoredProcedure);



                if (_GPA_Registration.Name != null)
                    AddParameter(oDbCommand, "@Name", DbType.String, _GPA_Registration.Name);
                else
                    AddParameter(oDbCommand, "@Name", DbType.String, DBNull.Value);



                if (_GPA_Registration.FatherName != null)
                    AddParameter(oDbCommand, "@FatherName", DbType.String, _GPA_Registration.FatherName);
                else
                    AddParameter(oDbCommand, "@FatherName", DbType.String, DBNull.Value);

                if (_GPA_Registration.MotherName != null)
                    AddParameter(oDbCommand, "@MotherName", DbType.String, _GPA_Registration.MotherName);
                else
                    AddParameter(oDbCommand, "@MotherName", DbType.String, DBNull.Value);


                if (_GPA_Registration.Institution != null)
                    AddParameter(oDbCommand, "@Institution", DbType.String, _GPA_Registration.Institution);
                else
                    AddParameter(oDbCommand, "@Institution", DbType.String, DBNull.Value);

                if (_GPA_Registration.HSC_Year != null)
                    AddParameter(oDbCommand, "@HSC_Year", DbType.String, _GPA_Registration.HSC_Year);
                else
                    AddParameter(oDbCommand, "@HSC_Year", DbType.String, DBNull.Value);

                if (_GPA_Registration.Subject != null)
                    AddParameter(oDbCommand, "@Subject", DbType.String, _GPA_Registration.Subject);
                else
                    AddParameter(oDbCommand, "@Subject", DbType.String, DBNull.Value);

                if (_GPA_Registration.Roll != null)
                    AddParameter(oDbCommand, "@Roll", DbType.String, _GPA_Registration.Roll);
                else
                    AddParameter(oDbCommand, "@Roll", DbType.String, DBNull.Value);

                if (_GPA_Registration.RegNo != null)
                    AddParameter(oDbCommand, "@RegNo", DbType.String, _GPA_Registration.RegNo);
                else
                    AddParameter(oDbCommand, "@RegNo", DbType.String, DBNull.Value);

                if (_GPA_Registration.Board != null)
                    AddParameter(oDbCommand, "@Board", DbType.String, _GPA_Registration.Board);
                else
                    AddParameter(oDbCommand, "@Board", DbType.String, DBNull.Value);

                if (_GPA_Registration.GPA != null)
                    AddParameter(oDbCommand, "@GPA", DbType.String, _GPA_Registration.GPA);
                else
                    AddParameter(oDbCommand, "@GPA", DbType.String, DBNull.Value);

                if (_GPA_Registration.Pre_Address != null)
                    AddParameter(oDbCommand, "@Pre_Address", DbType.String, _GPA_Registration.Pre_Address);
                else
                    AddParameter(oDbCommand, "@Pre_Address", DbType.String, DBNull.Value);

                if (_GPA_Registration.MobileNo != null)
                    AddParameter(oDbCommand, "@MobileNo", DbType.String, _GPA_Registration.MobileNo);
                else
                    AddParameter(oDbCommand, "@MobileNo", DbType.String, DBNull.Value);

                if (_GPA_Registration.Email != null)
                    AddParameter(oDbCommand, "@Email", DbType.String, _GPA_Registration.Email);
                else
                    AddParameter(oDbCommand, "@Email", DbType.String, DBNull.Value);

                if (_GPA_Registration.DataInsert_Time != null)
                    AddParameter(oDbCommand, "@DataInsert_Time", DbType.DateTime, _GPA_Registration.DataInsert_Time);
                else
                    AddParameter(oDbCommand, "@DataInsert_Time", DbType.DateTime, DBNull.Value);




                if (_GPA_Registration.Event != null)
                    AddParameter(oDbCommand, "@Event", DbType.String, _GPA_Registration.Event);
                else
                    AddParameter(oDbCommand, "@Event", DbType.String, DBNull.Value);


                if (_GPA_Registration.TruckingExt != null)
                    AddParameter(oDbCommand, "@TruckingExt", DbType.String, _GPA_Registration.TruckingExt);
                else
                    AddParameter(oDbCommand, "@TruckingExt", DbType.String, DBNull.Value);

                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



        public int Update_GPA_Registration(GPA_Registration _GPA_Registration)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("GPA_Registration_Update", CommandType.StoredProcedure);

                if (_GPA_Registration.Name != null)
                    AddParameter(oDbCommand, "@Name", DbType.String, _GPA_Registration.Name);
                else
                    AddParameter(oDbCommand, "@Name", DbType.String, DBNull.Value);



                if (_GPA_Registration.FatherName != null)
                    AddParameter(oDbCommand, "@FatherName", DbType.String, _GPA_Registration.FatherName);
                else
                    AddParameter(oDbCommand, "@FatherName", DbType.String, DBNull.Value);

                if (_GPA_Registration.MotherName != null)
                    AddParameter(oDbCommand, "@MotherName", DbType.String, _GPA_Registration.MotherName);
                else
                    AddParameter(oDbCommand, "@MotherName", DbType.String, DBNull.Value);


                if (_GPA_Registration.Institution != null)
                    AddParameter(oDbCommand, "@Institution", DbType.String, _GPA_Registration.Institution);
                else
                    AddParameter(oDbCommand, "@Institution", DbType.String, DBNull.Value);

                if (_GPA_Registration.HSC_Year != null)
                    AddParameter(oDbCommand, "@HSC_Year", DbType.String, _GPA_Registration.HSC_Year);
                else
                    AddParameter(oDbCommand, "@HSC_Year", DbType.String, DBNull.Value);

                if (_GPA_Registration.Subject != null)
                    AddParameter(oDbCommand, "@Subject", DbType.String, _GPA_Registration.Subject);
                else
                    AddParameter(oDbCommand, "@Subject", DbType.String, DBNull.Value);

                if (_GPA_Registration.Roll != null)
                    AddParameter(oDbCommand, "@Roll", DbType.String, _GPA_Registration.Roll);
                else
                    AddParameter(oDbCommand, "@Roll", DbType.String, DBNull.Value);


                if (_GPA_Registration.Board != null)
                    AddParameter(oDbCommand, "@Board", DbType.String, _GPA_Registration.Board);
                else
                    AddParameter(oDbCommand, "@Board", DbType.String, DBNull.Value);

                if (_GPA_Registration.GPA != null)
                    AddParameter(oDbCommand, "@GPA", DbType.String, _GPA_Registration.GPA);
                else
                    AddParameter(oDbCommand, "@GPA", DbType.String, DBNull.Value);

                if (_GPA_Registration.Pre_Address != null)
                    AddParameter(oDbCommand, "@Pre_Address", DbType.String, _GPA_Registration.Pre_Address);
                else
                    AddParameter(oDbCommand, "@Pre_Address", DbType.String, DBNull.Value);

                if (_GPA_Registration.MobileNo != null)
                    AddParameter(oDbCommand, "@MobileNo", DbType.String, _GPA_Registration.MobileNo);
                else
                    AddParameter(oDbCommand, "@MobileNo", DbType.String, DBNull.Value);

                if (_GPA_Registration.Email != null)
                    AddParameter(oDbCommand, "@Email", DbType.String, _GPA_Registration.Email);
                else
                    AddParameter(oDbCommand, "@Email", DbType.String, DBNull.Value);



                AddParameter(oDbCommand, "@Sl", DbType.Int32, _GPA_Registration.Sl);

                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



        public GPA_Registration Get_GPA_RegistrationInfoID(int GPA_RegistrationID)
        {
            try
            {
                GPA_Registration objGPA_Registration = new GPA_Registration();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("GPA_Registration_GetById", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@GPA_RegistrationID", DbType.Int32, GPA_RegistrationID);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    BuildEntityAll(oDbDataReader, objGPA_Registration);
                }
                oDbDataReader.Close();
                return objGPA_Registration;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public GPA_Registration Get_CourseInfoID(String SerialID)
        {
            try
            {
                GPA_Registration objGPA_Registration = new GPA_Registration();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("MOStdinfo_GetById", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@SerialID", DbType.String, SerialID);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    BuildEntityAll(oDbDataReader, objGPA_Registration);
                }
                oDbDataReader.Close();
                return objGPA_Registration;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


     /*   public DataTable match_RoutineList(string C_ROUTINE_ID)
        {
            string sql = @" select * from C_ROUTINE_VIEW where C_ROUTINE_ID ='" + C_ROUTINE_ID + "'  and Course_teacher_ID IS NOT NULL ";

            return obj_db.get_viewData(sql, "RtnList1");
        }
      * */
    }
}
