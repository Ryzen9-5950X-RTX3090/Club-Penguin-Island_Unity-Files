using System;
using ClubPenguin.Core;
using ClubPenguin;

namespace ClubPenguin.ClothingDesigner
{
	[Serializable]
	public class DecalRewardDefinition : AbstractStaticGameDataRewardDefinition<DecalDefinition>
	{
		public DecalDefinition Definition;
	}
}
