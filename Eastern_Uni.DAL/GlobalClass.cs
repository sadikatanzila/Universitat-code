using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Eastern_Uni.DAL;
using GononetPOS.BASE;
using System.Windows.Forms;
using System.Data;
using System.Data.Common;

namespace Eastern_Uni.DAL
{
    public static class GlobalClass
    {
       
        public static string _userID = String.Empty;

        public static string userID
        {
            get { return _userID; }
            set { _userID = value; }
        }

        public static string _userName = String.Empty;

        public static string userName
        {
            get { return _userName; }
            set { _userName = value; }
        }

        public static string BusinessType { get; set; }
    }
}
