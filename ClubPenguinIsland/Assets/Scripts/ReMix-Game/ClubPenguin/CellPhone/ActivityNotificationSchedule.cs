using System;
using ClubPenguin.Core.StaticGameData;
using ClubPenguin.Core;

namespace ClubPenguin.CellPhone
{
	[Serializable]
	public class ActivityNotificationSchedule : StaticGameDataDefinition
	{
		public RewardDefinition NotificationReward;
		public ActivityNotificationScheduleBlock[] NotificationBlocks;
	}
}
