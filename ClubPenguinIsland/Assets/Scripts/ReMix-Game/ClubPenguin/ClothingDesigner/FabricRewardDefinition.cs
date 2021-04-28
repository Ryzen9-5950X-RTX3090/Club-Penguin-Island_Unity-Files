using System;
using ClubPenguin.Core;
using ClubPenguin;

namespace ClubPenguin.ClothingDesigner
{
	[Serializable]
	public class FabricRewardDefinition : AbstractStaticGameDataRewardDefinition<FabricDefinition>
	{
		public FabricDefinition Definition;
	}
}
