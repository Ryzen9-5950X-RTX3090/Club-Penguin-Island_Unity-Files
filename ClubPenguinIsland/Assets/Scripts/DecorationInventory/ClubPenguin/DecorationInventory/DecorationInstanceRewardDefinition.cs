using System;
using ClubPenguin.Core;

namespace ClubPenguin.DecorationInventory
{
	[Serializable]
	public class DecorationInstanceRewardDefinition : AbstractStaticGameDataRewardDefinition<DecorationDefinition>
	{
		public DecorationDefinition Decoration;
		public int Count;
	}
}
