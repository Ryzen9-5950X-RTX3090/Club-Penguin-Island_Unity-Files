using System;
using ClubPenguin.Core;
using ClubPenguin.Props;

namespace ClubPenguin.Consumable
{
	[Serializable]
	public class ConsumableInstanceRewardDefinition : AbstractStaticGameDataRewardDefinition<PropDefinition>
	{
		public PropDefinition Consumable;
		public int Count;
	}
}
