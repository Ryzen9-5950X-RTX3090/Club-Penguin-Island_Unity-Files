using System;
using ClubPenguin.Core.StaticGameData;

namespace ClubPenguin.MiniGames.Fishing
{
	[Serializable]
	public class LootTableBucketDefinition : StaticGameDataDefinition
	{
		public string BucketName;
		public int Weight;
	}
}
