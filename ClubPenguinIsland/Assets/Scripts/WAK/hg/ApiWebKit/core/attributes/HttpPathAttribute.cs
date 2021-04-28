using System;

namespace hg.ApiWebKit.core.attributes
{
	public class HttpPathAttribute : Attribute
	{
		public HttpPathAttribute(string path)
		{
		}

		public string BaseUriName;
		public string Path;
	}
}
