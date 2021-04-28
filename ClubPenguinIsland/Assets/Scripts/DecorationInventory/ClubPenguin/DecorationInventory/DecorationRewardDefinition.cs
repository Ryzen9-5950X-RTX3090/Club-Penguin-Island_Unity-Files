using System;
using ClubPenguin.Core;

namespace ClubPenguin.DecorationInventory
{
	[Serializable]
	public class DecorationRewardDefinition : AbstractStaticGameDataRewardDefinition<DecorationDefinition>
	{
		public DecorationDefinition Definition;
	}
}
