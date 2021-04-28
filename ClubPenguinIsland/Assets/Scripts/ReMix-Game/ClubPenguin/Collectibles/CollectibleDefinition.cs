using System;
using ClubPenguin.Core.StaticGameData;
using Disney.Kelowna.Common;

namespace ClubPenguin.Collectibles
{
	[Serializable]
	public class CollectibleDefinition : StaticGameDataDefinition
	{
		public string CollectibleType;
		public SpawnCategory SpawnCategory;
		public float ExchangeRate;
		public int RespawnSeconds;
		public SpriteContentKey SpriteAsset;
		public string NameToken;
	}
}
