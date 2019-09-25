using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Lab3.App_Code
{
    public class PostHandler :IHttpHandler
    {
        public bool IsReusable
        {
            get { return false; }
        }

        public void ProcessRequest(HttpContext context)
        {
            HttpRequest request = context.Request;
            var parmA = request.QueryString["ParmA"];
            var parmB = request.QueryString["ParmB"];
            int A = int.Parse(parmA);
            int B = int.Parse(parmB);
            HttpResponse response = context.Response;
            int sum = A + B;
            response.Write("POST-Http-IAV:ParmA + ParmB = " + sum);
        }
    }
}