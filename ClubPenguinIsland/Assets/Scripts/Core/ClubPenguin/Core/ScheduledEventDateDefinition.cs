using System;
using ClubPenguin.Core.StaticGameData;
using Disney.Kelowna.Common;

namespace ClubPenguin.Core
{
	[Serializable]
	public class ScheduledEventDateDefinition : StaticGameDataDefinition
	{
		[Serializable]
		public struct DateRange
		{
			public DateUnityWrapper StartDate;
			public DateUnityWrapper EndDate;
		}

		public int Id;
		public DateRange Dates;
	}
}
