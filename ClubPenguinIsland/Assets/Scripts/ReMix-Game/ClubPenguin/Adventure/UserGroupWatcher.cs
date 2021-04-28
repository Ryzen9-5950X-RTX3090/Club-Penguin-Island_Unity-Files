using System;
using ClubPenguin.Core;

namespace ClubPenguin.Adventure
{
	[Serializable]
	public class UserGroupWatcher : TaskWatcher
	{
		[Serializable]
		public class MultiUserSwitch
		{
			public int MinUserCount;
			public string SwitchName;
		}

		public enum Operators
		{
			OR = 0,
			AND = 1,
		}

		public Operators Operator;
		public MultiUserSwitch[] Switches;
	}
}
