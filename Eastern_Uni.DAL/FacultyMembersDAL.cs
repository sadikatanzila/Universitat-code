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
    public class FacultyMembersDAL
    {
        private void AddParameter(DbCommand oDbCommand, string parameterName, DbType dbType, object value)
        {
            oDbCommand.Parameters.Add(DbProviderHelper.CreateParameter(parameterName, dbType, value));
        }

        private void BuildEntity(DbDataReader reader, FacultyMembers _FacultyMembers)
        {

            _FacultyMembers.Serial_no = Convert.ToInt32(reader["Serial_no"]);

            _FacultyMembers.FacultyID = reader["FacultyID"] is DBNull ? 0 : Convert.ToInt32(reader["FacultyID"]);

            if (reader["Name"] != DBNull.Value)
                _FacultyMembers.Name = Convert.ToString(reader["Name"]);

            
            if (reader["Designation"] != DBNull.Value)
                _FacultyMembers.Designation = Convert.ToString(reader["Designation"]);


            if (reader["Faculty"] != DBNull.Value)
                _FacultyMembers.Faculty = Convert.ToString(reader["Faculty"]);


            if (reader["Priority"] != DBNull.Value)
                _FacultyMembers.Priority = Convert.ToString(reader["Priority"]);


            if (reader["Phone"] != DBNull.Value)
                _FacultyMembers.Phone = Convert.ToString(reader["Phone"]);


            if (reader["Email"] != DBNull.Value)
                _FacultyMembers.Email = Convert.ToString(reader["Email"]);


            if (reader["PictureLocation"] != DBNull.Value)
                _FacultyMembers.PictureLocation = Convert.ToString(reader["PictureLocation"]);


            if (reader["AcademicBackground"] != DBNull.Value)
                _FacultyMembers.AcademicBackground = Convert.ToString(reader["AcademicBackground"]);


            if (reader["ResearchInterest"] != DBNull.Value)
                _FacultyMembers.ResearchInterest = Convert.ToString(reader["ResearchInterest"]);


            if (reader["Publications"] != DBNull.Value)
                _FacultyMembers.Publications = Convert.ToString(reader["Publications"]);


            if (reader["DetailsLink"] != DBNull.Value)
                _FacultyMembers.DetailsLink = Convert.ToString(reader["DetailsLink"]);


            if (reader["TeachingExp"] != DBNull.Value)
                _FacultyMembers.TeachingExp = Convert.ToString(reader["TeachingExp"]);


            if (reader["AdminsPos"] != DBNull.Value)
                _FacultyMembers.AdminsPos = Convert.ToString(reader["AdminsPos"]);



        }

        public FacultyMembers FacultyMembers_GetBySl(int Serial_no)
        {
            try
            {
                FacultyMembers obFacultyMembers = new FacultyMembers();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("FacultyMembers_GetBySl", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@Serial_no", DbType.Int32, Serial_no);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    BuildEntity(oDbDataReader, obFacultyMembers);
                }
                oDbDataReader.Close();
                return obFacultyMembers;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public int FacultyMembers_Update(FacultyMembers _FacultyMembers)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("news_events_Update", CommandType.StoredProcedure);

                AddParameter(oDbCommand, "@Serial_no", DbType.Int32, _FacultyMembers.Serial_no);

                if (_FacultyMembers.FacultyID > 0)
                    AddParameter(oDbCommand, "@FacultyID", DbType.Int32, _FacultyMembers.FacultyID);
                else
                    AddParameter(oDbCommand, "@FacultyID", DbType.Int32, 0);

                if (_FacultyMembers.Name != "")
                    AddParameter(oDbCommand, "@Name", DbType.String, _FacultyMembers.Name);
                else
                    AddParameter(oDbCommand, "@Name", DbType.String, null);

              

                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int FacultyMembers_Delete(int serial_no)
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

        public DataTable FacultyType_LoadForDll()
        {
            DataTable dtRequisition = null;
            DbDataReader oDbDataReader = null;
            try
            {
                dtRequisition = new DataTable();

                DbCommand oDbCommand = DbProviderHelper.CreateCommand("GetAll_FacultyTypeForDll", CommandType.StoredProcedure);

                oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                dtRequisition.Load(oDbDataReader);
                oDbDataReader.Close();
                return dtRequisition;
            }
            catch (Exception ex)
            {
                throw ex;
            }

            finally
            {
                dtRequisition.Dispose();
                oDbDataReader.Dispose();
            }
        }

        public DataTable FacultyType_LoadForCourses()
        {
            DataTable dtRequisition = null;
            DbDataReader oDbDataReader = null;
            try
            {
                dtRequisition = new DataTable();

                DbCommand oDbCommand = DbProviderHelper.CreateCommand("GetAll_FacultyTypeForCourses", CommandType.StoredProcedure);

                oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                dtRequisition.Load(oDbDataReader);
                oDbDataReader.Close();
                return dtRequisition;
            }
            catch (Exception ex)
            {
                throw ex;
            }

            finally
            {
                dtRequisition.Dispose();
                oDbDataReader.Dispose();
            }
        }

        public DataTable FacultyDegType_LoadForDll()
        {
            DataTable dtRequisition = null;
            DbDataReader oDbDataReader = null;
            try
            {
                dtRequisition = new DataTable();

                DbCommand oDbCommand = DbProviderHelper.CreateCommand("GetAll_FacultyDegTypeForDll", CommandType.StoredProcedure);

                oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                dtRequisition.Load(oDbDataReader);
                oDbDataReader.Close();
                return dtRequisition;
            }
            catch (Exception ex)
            {
                throw ex;
            }

            finally
            {
                dtRequisition.Dispose();
                oDbDataReader.Dispose();
            }
        }
    }
}
