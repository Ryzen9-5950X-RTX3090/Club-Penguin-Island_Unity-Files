using System;
using ClubPenguin.Core;
using ClubPenguin.Props;

namespace ClubPenguin.Consumable
{
	[Serializable]
	public class ConsumableRewardDefinition : AbstractStaticGameDataRewardDefinition<PropDefinition>
	{
		public PropDefinition Definition;
	}
}
