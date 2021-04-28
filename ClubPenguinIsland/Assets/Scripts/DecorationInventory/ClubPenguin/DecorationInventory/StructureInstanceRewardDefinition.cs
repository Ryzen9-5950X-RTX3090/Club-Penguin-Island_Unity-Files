using System;
using ClubPenguin.Core;

namespace ClubPenguin.DecorationInventory
{
	[Serializable]
	public class StructureInstanceRewardDefinition : AbstractStaticGameDataRewardDefinition<StructureDefinition>
	{
		public StructureDefinition Decoration;
		public int Count;
	}
}
