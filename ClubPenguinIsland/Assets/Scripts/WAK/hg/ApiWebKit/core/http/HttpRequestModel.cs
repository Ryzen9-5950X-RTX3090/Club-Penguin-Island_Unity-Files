using System;
using hg.ApiWebKit.core.attributes;

namespace hg.ApiWebKit.core.http
{
	public class HttpRequestModel
	{
		[Serializable]
		public class HttpRequestModelResult
		{
			public HttpOperation Operation;
			public string TransactionId;
			public float Timeout;
			public string Verb;
			public string Uri;
			public string EscapedUri;
			public byte[] Data;
		}

		public HttpRequestModel(HttpOperation owner, HttpProviderAttribute httpClient, HttpPathAttribute httpPath, HttpMethodAttribute httpVerb, HttpTimeoutAttribute httpTimeout, HttpHeaderAttribute[] httpClassHeaders)
		{
		}

	}
}
