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
   public class HR_NationalityDAL
    {
        private void BuildEntity(DbDataReader reader, HR_Nationality _HR_Nationality)
        {

            _HR_Nationality.NationSl = Convert.ToInt32(reader["NationSl"]);


            if (reader["NationName"] != DBNull.Value)
                _HR_Nationality.NationName = Convert.ToString(reader["NationName"]);

            if (reader["Nation_ID"] != DBNull.Value)
                _HR_Nationality.Nation_ID = Convert.ToInt32(reader["Nation_ID"]);


        }

        public List<HR_Nationality> HR_Nationality_GetAll()
        {
            try
            {
                List<HR_Nationality> HR_NationalityList = new List<HR_Nationality>();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_Nationality_GetAll", CommandType.StoredProcedure);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    HR_Nationality oHR_Nationality = new HR_Nationality();
                    BuildEntity(oDbDataReader, oHR_Nationality);
                    HR_NationalityList.Add(oHR_Nationality);
                }
                oDbDataReader.Close();
                return HR_NationalityList;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



        public DataTable HR_Nationality_LoadForDll()
        {
            DataTable dtRequisition = null;
            DbDataReader oDbDataReader = null;
            try
            {
                dtRequisition = new DataTable();

                DbCommand oDbCommand = DbProviderHelper.CreateCommand("GetAll_HR_NationalityForDll", CommandType.StoredProcedure);

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
