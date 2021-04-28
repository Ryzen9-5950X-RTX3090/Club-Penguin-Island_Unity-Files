using System;

namespace ClubPenguin.Net.Domain
{
	[Serializable]
	public class StatefulWorldObject : CPMMOItem
	{
		public string Path;
		public long Timestamp;
		public ScheduledWorldObjectState State;
	}
}
