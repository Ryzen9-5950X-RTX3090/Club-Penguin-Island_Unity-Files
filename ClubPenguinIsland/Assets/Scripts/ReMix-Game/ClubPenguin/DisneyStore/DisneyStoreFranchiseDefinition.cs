using System;
using ClubPenguin.Core.StaticGameData;
using System.Collections.Generic;
using Disney.Kelowna.Common;
using UnityEngine;

namespace ClubPenguin.DisneyStore
{
	[Serializable]
	public class DisneyStoreFranchiseDefinition : StaticGameDataDefinition
	{
		public int Id;
		public bool IsEnabled;
		public List<DisneyStoreItemDefinition> Items;
		public long StartTimeInSeconds;
		public long EndTimeInSeconds;
		public PrefabContentKey HomePrefabKey;
		public LocalizedSpriteAssetContentKey FranchiseIconPath;
		public SpriteContentKey FranchiseHeaderPath;
		public Color FranchiseBackgroundColor;
		public int SortingIdDesc;
	}
}
