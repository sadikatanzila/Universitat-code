using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Data.SqlClient;
using System.Web.Routing;
using System.IO;

namespace Eastern_Uni
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
          //  RouteTable.Routes.MapPageRoute("StoreRoute",
          //  "Eastern/{Name}",
           // "~/AboutEU_Profile.aspx");

           // string[] filePaths = Directory.GetFiles(Server.MapPath("~/"));
           // for (int i = 0; i < filePaths.Length; ++i)
           // {
           //   if (!filePaths[i].Contains(".cs"))
            //    {
            //        string path = filePaths[i];
            //        String actualPtath = System.IO.Path.GetFileName(path);
            //        String[] split = actualPtath.Split('.');
            //        RouteTable.Routes.MapPageRoute("StoreRoute" + i,
            //     split[0], "~/" + actualPtath);

            //   }


           // }

            RegisterRoutes(RouteTable.Routes);
        }
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.MapPageRoute("", "eumo2014", "~/eumo2014.aspx");
            //routes.MapPageRoute("", "Eastern/{Name}", "~/eumo2014.aspx");
        }
        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {
            
        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}