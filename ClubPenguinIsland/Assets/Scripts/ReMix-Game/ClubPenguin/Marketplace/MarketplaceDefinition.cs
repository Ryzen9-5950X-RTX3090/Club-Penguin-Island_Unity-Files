using System;
using ClubPenguin.Core.StaticGameData;
using ClubPenguin.Props;
using Disney.Kelowna.Common;

namespace ClubPenguin.Marketplace
{
	[Serializable]
	public class MarketplaceDefinition : StaticGameDataDefinition
	{
		public string Name;
		public string DisplayName;
		public string ItemListDisplayName;
		public string NameInAssets;
		public string TextColorHex;
		public string DescriptionName;
		public string LocationName;
		public string AdText;
		public string AdDescriptionText;
		public PropDefinition AdItem;
		public MarketplaceDefinition AdMarket;
		public PrefabContentKey TopPanel;
		public PropDefinition[] ShowOnlyTheseItems;
		public PropDefinition[] SpecialItems;
		public bool ShowDefaultItems;
	}
}
