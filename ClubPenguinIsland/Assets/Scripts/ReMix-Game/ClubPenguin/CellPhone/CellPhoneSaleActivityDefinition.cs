using System;
using ClubPenguin.Marketplace;
using ClubPenguin;
using UnityEngine;
using ClubPenguin.Core;
using ClubPenguin.Props;
using ClubPenguin.DisneyStore;
using Disney.Kelowna.Common;

namespace ClubPenguin.CellPhone
{
	[Serializable]
	public class CellPhoneSaleActivityDefinition : CellPhoneActivityDefinition
	{
		[Serializable]
		public class MarketPlaceSaleData
		{
			public MarketplaceDefinition MarketPlace;
			public SceneDefinition Scene;
			public Vector3 PositionInZone;
		}

		public int Id;
		public ScheduledEventDateDefinition AvailableDates;
		public int DiscountPercentage;
		public MarketPlaceSaleData[] MarketPlaceData;
		public PropDefinition[] Consumables;
		public DisneyStoreItemDefinition[] DisneyStoreItems;
		public PrefabContentKey MarketBannerKey;
	}
}
