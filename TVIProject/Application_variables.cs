using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TVIProject
{
    public class Application_variables
    {

        private static string _UserID;
        public string UserID
        {
            get { return _UserID; }
            set { _UserID = value; }
        }

        private static string _RoleName;
        public string RoleName
        {
            get { return _RoleName; }
            set { _RoleName = value; }
        }


        private static string _RightViews;
        public string RightViews
        {
            get { return _RightViews; }
            set { _RightViews = value; }
        }

        private static string _RightInsert;
        public string RightInsert
        {
            get { return _RightInsert; }
            set { _RightInsert = value; }
        }

        private static string _RightEdit;
        public string RightEdit
        {
            get { return _RightEdit; }
            set { _RightEdit = value; }
        }

        private static string _RightDelete;
        public string RightDelete
        {
            get { return _RightDelete; }
            set { _RightDelete = value; }
        }

        private static string _FormID;
        public string FormID
        {
            get { return _FormID; }
            set { _FormID = value; }
        }

        private static string _FormName;
        public string FormName
        {
            get { return _FormName; }
            set { _FormName = value; }
        }


        private static string _FormURL;
        public string FormURL
        {
            get { return _FormURL; }
            set { _FormURL = value; }
        }


        private static string _FormOrder;
        public string FormOrder
        {
            get { return _FormOrder; }
            set { _FormOrder = value; }
        }



        private static string _SubFormOrder;
        public string SubFormOrder
        {
            get { return _SubFormOrder; }
            set { _SubFormOrder = value; }
        }



    }
}