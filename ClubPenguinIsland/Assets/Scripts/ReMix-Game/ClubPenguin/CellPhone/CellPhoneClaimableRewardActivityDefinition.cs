using System;
using ClubPenguin.Rewards;
using ClubPenguin.Core;

namespace ClubPenguin.CellPhone
{
	[Serializable]
	public class CellPhoneClaimableRewardActivityDefinition : CellPhoneActivityDefinition
	{
		public ClaimableRewardDefinition ClaimableReward;
		public ScheduledEventDateDefinition AvailableDates;
	}
}
