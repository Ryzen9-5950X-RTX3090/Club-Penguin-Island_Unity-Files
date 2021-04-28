using System;
using ClubPenguin.Core;

namespace ClubPenguin.DecorationInventory
{
	[Serializable]
	public class StructureRewardDefinition : AbstractStaticGameDataRewardDefinition<StructureDefinition>
	{
		public StructureDefinition Definition;
	}
}
