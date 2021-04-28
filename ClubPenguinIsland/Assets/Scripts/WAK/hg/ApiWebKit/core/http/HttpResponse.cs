using System;
using System.Collections.Generic;
using hg.ApiWebKit;
using UnityEngine;

namespace hg.ApiWebKit.core.http
{
	[Serializable]
	public class HttpResponse
	{
		public HttpResponse(HttpRequest request, float timeToComplete, Dictionary<string, string> responseHeaders, string responseError, string responseText, byte[] responseData, HttpStatusCode statusCode)
		{
		}

		public float TimeToComplete;
		public bool HasError;
		public string Error;
		[MultilineAttribute]
		public string Text;
		public byte[] Data;
		public HttpStatusCode StatusCode;
	}
}
