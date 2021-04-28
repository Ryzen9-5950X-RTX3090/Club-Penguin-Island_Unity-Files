using System;
using ClubPenguin.Core;

namespace ClubPenguin.Adventure
{
	[Serializable]
	public class ActionEventWatcher : TaskWatcher
	{
		public InputEvents.Actions[] Actions;
	}
}
