using System;

namespace hg.ApiWebKit.core.attributes
{
	public class HttpTimeoutAttribute : Attribute
	{
		public HttpTimeoutAttribute(float timeout)
		{
		}

		public float Timeout;
	}
}
