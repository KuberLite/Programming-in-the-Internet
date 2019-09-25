using Lab3.Enums;
using Lab3.Utilities;
using System;
using System.Collections.Generic;
using System.IO;
using System.Net;
using System.Web.UI;

namespace Lab3
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GetButton_Click(object sender, EventArgs e)
        {
            var requestManager = new RequestManager();
            var parameters = new Dictionary<string, string>()
            {
                { "ParmA", "aaa" },
                { "ParmB", "bbb" }
            };
            var response = requestManager.MakeRequest("yyy.ndy", HttpRequestMethodType.GET, parameters);

            Response.Write(response); 
        }

        protected void PostButton_Click(object sender, EventArgs e)
        {
            var requestManager = new RequestManager();
            var parameters = new Dictionary<string, string>()
            {
                { "ParmA", "123" },
                { "ParmB", "456" }
            };
            var response = requestManager.MakeRequest("yyy.ndy", HttpRequestMethodType.POST, parameters);

            Response.Write(response);
        }

        protected void OptionsButton_Click(object sender, EventArgs e)
        {
            var requestManager = new RequestManager();
            var parameters = new Dictionary<string, string>()
            {
                { "ParmA", "aaa" },
                { "ParmB", "bbb" }
            };
            var response = requestManager.MakeRequest("yyy.ndy", HttpRequestMethodType.OPTIONS, parameters);

            Response.Write(response);
        }

        protected void GetErrorButton_Click(object sender, EventArgs e)
        {
            try
            {
                HttpWebRequest request = (HttpWebRequest)WebRequest.Create("http://localhost:8097/yyy.ndy?ParmA=aaa&ParmB=bbb");
                request.Method = "GET";
                HttpWebResponse response = (HttpWebResponse)request.GetResponse();
                StreamReader reader = new StreamReader(response.GetResponseStream());
                Response.Write(reader.ReadToEnd());
            }
            catch (WebException ex)
            {
                Response.Write(ex.Status);
                Response.Write("<br />" + ex.Message);
                Response.Write("<br />" + ex.TargetSite);
                Response.Write("<br />" + ex.Source);
            }
        }
    }
}