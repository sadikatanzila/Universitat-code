using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;
using System.Configuration;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;




namespace Eastern_Uni
{
    public partial class Photo_Gallery : System.Web.UI.Page
    {
       

        protected void Page_Load(object sender, EventArgs e)
        {
          
        }
      
            // protected void SlideShowTimer_Tick(object sender, EventArgs e)
            //  {
            //     DateTime later = DateTime.Now.AddSeconds(.5);
            //     while (DateTime.Now < later)
            //    {

            //    }

            //   this.SlideShowImage1.Src = RandomImageName();
            //  this.SlideShowText.Text = this.SlideShowImage1.Src.ToString();
            // }

            //  private string RandomImageName()
            //  {

            //    Random rand = new Random();

            //    int RandomInt = rand.Next(0, 5);

            //    switch (RandomInt)
            //   {
            //
            //        case 0:
            //            return "~/image/Slider/1.jpg";
            //           break;
            //      case 1:
            //           return "~/image/Slider/2.jpg";
            //           break;
            //        case 2:
            //            return "~/image/Slider/3.jpg";
            //           break;
            //       default:
            //          return "~/image/Slider/1.jpg";
            //         break;

            //   }


            //  }
    }
}