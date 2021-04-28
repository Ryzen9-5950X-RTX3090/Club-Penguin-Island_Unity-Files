using System;
using ClubPenguin.Core.StaticGameData;
using ClubPenguin.Core;

namespace ClubPenguin.Rewards
{
	[Serializable]
	public class ClaimableRewardDefinition : StaticGameDataDefinition
	{
		public int Id;
		public string TitleToken;
		public bool IsMemberOnly;
		public bool ClaimOnLogin;
		public RewardDefinition Reward;
		public ScheduledEventDateDefinitionKey DateDefinitionKey;
	}
}
