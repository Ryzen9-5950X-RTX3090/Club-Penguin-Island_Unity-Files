using System;
using ClubPenguin.Core;
using ClubPenguin.DecorationInventory;

namespace ClubPenguin.Rewards
{
	[Serializable]
	public class LightingRewardDefinition : AbstractStaticGameDataRewardDefinition<LightingDefinition>
	{
		public LightingDefinition Definition;
	}
}
