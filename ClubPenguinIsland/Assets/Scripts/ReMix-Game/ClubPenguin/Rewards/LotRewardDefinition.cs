using System;
using ClubPenguin.Core;
using ClubPenguin;

namespace ClubPenguin.Rewards
{
	[Serializable]
	public class LotRewardDefinition : AbstractStaticGameDataRewardDefinition<LotDefinition>
	{
		public LotDefinition Definition;
	}
}
