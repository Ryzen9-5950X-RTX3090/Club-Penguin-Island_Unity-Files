using System;

namespace Disney.Kelowna.Common.SEDFSM
{
	[Serializable]
	public class State
	{
		public string Name;
		public ExternalEvent[] OnEntryEvents;
		public Transition[] Transitions;
		public ExternalEvent[] OnExitEvents;
	}
}
