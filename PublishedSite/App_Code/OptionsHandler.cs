using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Lab3.App_Code
{
    public class OptionsHandler :IHttpHandler
    {
        public bool IsReusable
        {
            get { return false; }
        }

        public void ProcessRequest(HttpContext context)
        {
            HttpRequest request = context.Request;
            string parmA = request.QueryString["ParmA"];
            string parmB = request.QueryString["ParmB"];
            HttpResponse response = context.Response;
            response.Write("OPTIONS-Http-GDV:ParmA = " + parmA + ", ParmB = " + parmB);
        }
    }
}