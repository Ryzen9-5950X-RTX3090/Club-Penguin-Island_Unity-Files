using hg.ApiWebKit;

namespace hg.ApiWebKit.core.attributes
{
	public class HttpHeaderAttribute : HttpMappedValueAttribute
	{
		protected HttpHeaderAttribute(MappingDirection direction, string header) : base(default(MappingDirection), default(string))
		{
		}

	}
}
