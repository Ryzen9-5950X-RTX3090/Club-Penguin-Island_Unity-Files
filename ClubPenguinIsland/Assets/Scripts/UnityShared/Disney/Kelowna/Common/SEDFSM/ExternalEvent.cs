using System;

namespace Disney.Kelowna.Common.SEDFSM
{
	[Serializable]
	public struct ExternalEvent
	{
		public ExternalEvent(string target, string evt) : this()
		{
		}

		public string Target;
		public string Event;
	}
}
