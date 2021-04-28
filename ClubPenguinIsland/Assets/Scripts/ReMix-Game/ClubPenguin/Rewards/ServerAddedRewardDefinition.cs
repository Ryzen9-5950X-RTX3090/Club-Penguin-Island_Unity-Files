using System;
using ClubPenguin.Core.StaticGameData;
using ClubPenguin.Core;

namespace ClubPenguin.Rewards
{
	[Serializable]
	public class ServerAddedRewardDefinition : StaticGameDataDefinition
	{
		public int Id;
		public string TitleToken;
		public bool IsMemberOnly;
		public bool ClaimOnLogin;
		public RewardDefinition Reward;
	}
}
