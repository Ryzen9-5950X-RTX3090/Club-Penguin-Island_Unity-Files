using System;
using ClubPenguin.Core;

namespace ClubPenguin.Collectibles
{
	[Serializable]
	public class CollectibleRewardDefinition : AbstractStaticGameDataRewardDefinition<CollectibleDefinition>
	{
		public CollectibleDefinition Collectible;
		public int Amount;
	}
}
