using System;
using ClubPenguin.Core.StaticGameData;
using ClubPenguin.Rewards;
using System.Collections.Generic;
using ClubPenguin;
using ClubPenguin.Chat;
using ClubPenguin.UI;
using ClubPenguin.DecorationInventory;
using ClubPenguin.Core;
using ClubPenguin.Props;
using ClubPenguin.Tubes;

namespace ClubPenguin.Progression
{
	[Serializable]
	public class ProgressionUnlockDefinition : StaticGameDataDefinition
	{
		public int Level;
		public RewardThemeDefinition ThemeDefinition;
		public List<string> colourPacks;
		public DecalDefinition[] decals;
		public FabricDefinition[] fabrics;
		public EmoteDefinition[] emotePacks;
		public SizzleClipDefinition[] sizzleClips;
		public TemplateDefinition[] equipmentTemplates;
		public LotDefinition[] lots;
		public DecorationDefinition[] decorationPurchaseRights;
		public StructureDefinition[] structurePurchaseRights;
		public MusicTrackDefinition[] musicTracks;
		public LightingDefinition[] lighting;
		public PropDefinition[] durables;
		public int savedOutfitSlots;
		public int iglooSlots;
		public PropDefinition[] partySupplies;
		public TubeDefinition[] tubes;
	}
}
