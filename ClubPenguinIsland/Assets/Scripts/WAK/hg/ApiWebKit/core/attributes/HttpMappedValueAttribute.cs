using System;
using hg.ApiWebKit;

namespace hg.ApiWebKit.core.attributes
{
	public class HttpMappedValueAttribute : Attribute
	{
		protected HttpMappedValueAttribute(MappingDirection direction, string name)
		{
		}

		public string VariableName;
		public string VariableValue;
		public string Value;
	}
}
