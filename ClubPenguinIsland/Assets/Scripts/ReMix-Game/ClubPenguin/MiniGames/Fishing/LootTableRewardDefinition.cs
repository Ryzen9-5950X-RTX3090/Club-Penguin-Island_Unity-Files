using System;
using ClubPenguin.Core.StaticGameData;
using Disney.Kelowna.Common;
using ClubPenguin.Core;

namespace ClubPenguin.MiniGames.Fishing
{
	[Serializable]
	public class LootTableRewardDefinition : StaticGameDataDefinition
	{
		public string Id;
		public string DisplayName;
		public LootTableBucketDefinition Bucket;
		public int Weight;
		public float TimingWindow;
		public PrefabContentKey ModelAsset;
		public PrefabContentKey ShadowAsset;
		public RewardDefinition Reward;
		public SpriteContentKey RewardImage;
	}
}
