using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EasternUni.BO
{
     [Serializable()]
  public class Photo_Album
    {
         public int AlbumID { get; set; }
         public string Album_Name { get; set; }
         public string HeaderImage { get; set; }

         public Photo_Album()
        { }

         public Photo_Album(
            int AlbumID, string Album_Name, string HeaderImage)
         {
             this.AlbumID = AlbumID;
             this.Album_Name = Album_Name;
             this.HeaderImage = HeaderImage;
         }
    }
}
