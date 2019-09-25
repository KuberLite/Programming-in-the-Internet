using System.Web;

namespace Lab3.App_Code
{
    public class GetHandler : IHttpHandler
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
            response.Write("GET-Http-GDV:ParmA = " + parmA + ", ParmB = " + parmB);
        }
    }
}