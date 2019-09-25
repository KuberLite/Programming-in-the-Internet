using Lab3.Enums;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;

namespace Lab3.Utilities
{
    public class RequestManager
    {
        public string MakeRequest(string resourceUrl, HttpRequestMethodType methodType, IDictionary<string, string> parameters = null)
        {
            var url = BuildUrl(resourceUrl, parameters);
            var request = WebRequest.Create(url);
            request.ContentLength = 0;
            request.Method = methodType.ToString();
            var response = (HttpWebResponse)request.GetResponse();
            var reader = new StreamReader(response.GetResponseStream());
            return reader.ReadToEnd();
        }

        private string BuildUrl(string resourceUrl, IDictionary<string, string> parameters)
        {
            var webSiteUrl = ConfigurationManager.AppSettings["WebSiteUri"];
            var url = $"{webSiteUrl}/{resourceUrl}";

            if (parameters == null)
            {
                return url;
            }

            var parametersString = string.Join("&", parameters.Select(param => $"{param.Key}={param.Value}"));
            return $"{url}?{parametersString}";
        }
    }
}