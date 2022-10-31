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
   public class Photo_AlbumDAL
    {
       public bool Add_AlbumPhotos(List<Photo_Album> list)
       {
           try
           {
               DbCommand command = DbProviderHelper.CreateCommand("Add_AlbumPhotos", CommandType.StoredProcedure);

               foreach (Photo_Album obj in list)
               {
                   command.Parameters.Clear();



                   if (obj.AlbumID != null)
                       command.Parameters.Add(DbProviderHelper.CreateParameter("@AlbumID", DbType.Int32, obj.AlbumID));
                   else
                       command.Parameters.Add(DbProviderHelper.CreateParameter("@AlbumID", DbType.Int32, DBNull.Value));

                   if (obj.AlbumID != null)
                       command.Parameters.Add(DbProviderHelper.CreateParameter("@HeaderImage", DbType.String, obj.HeaderImage));
                   else
                       command.Parameters.Add(DbProviderHelper.CreateParameter("@HeaderImage", DbType.String, DBNull.Value));

                  

                   if (obj.AlbumID != null)
                       command.Parameters.Add(DbProviderHelper.CreateParameter("@Album_Name", DbType.String, obj.Album_Name));
                   else
                       command.Parameters.Add(DbProviderHelper.CreateParameter("@Album_Name", DbType.String, DBNull.Value));



                   DbProviderHelper.ExecuteNonQuery(command);
               }
           }

           catch
           {
               throw;
           }

           return true;
       }

       private void BuildEntityAll(DbDataReader reader, Photo_Album _Photo_Album)
       {

           _Photo_Album.AlbumID = Convert.ToInt32(reader["AlbumID"]);


           if (reader["HeaderImage"] != DBNull.Value)
               _Photo_Album.HeaderImage = Convert.ToString(reader["HeaderImage"]);

           if (reader["Album_Name"] != DBNull.Value)
               _Photo_Album.Album_Name = Convert.ToString(reader["Album_Name"]);

         


       }

       private void AddParameter(DbCommand oDbCommand, string parameterName, DbType dbType, object value)
       {
           oDbCommand.Parameters.Add(DbProviderHelper.CreateParameter(parameterName, dbType, value));
       }



       
    }
}
