using System;
using ClubPenguin.Core;
using ClubPenguin.Props;
using ClubPenguin.Tags;

namespace ClubPenguin.Adventure
{
	[Serializable]
	public class ConsumableWatcher : TaskWatcher
	{
		public enum ConsumableEvent
		{
			START = 0,
			COMPLETE = 1,
		}

		public PropDefinition[] Props;
		public TagMatcher Tags;
		public ConsumableEvent Event;
	}
}
