using System;
using ClubPenguin.Core;
using ClubPenguin.Rewards;
using ClubPenguin.NPC;
using ClubPenguin.Collectibles;
using ClubPenguin.Consumable;
using ClubPenguin.ClothingDesigner;
using ClubPenguin.DecorationInventory;
using ClubPenguin.Chat;
using ClubPenguin.Durable;
using ClubPenguin.Tubes;

namespace ClubPenguin
{
	[Serializable]
	public class CPRewardDefinition : RewardDefinition
	{
		public RewardThemeDefinition ThemeDefinition;
		public CoinRewardableDefinition Coins;
		public MascotXPRewardDefinition[] MascotXP;
		public CollectibleRewardDefinition[] Collectibles;
		public ConsumableInstanceRewardDefinition[] ConsumableInstances;
		public DecalRewardDefinition[] Decals;
		public FabricRewardDefinition[] Fabrics;
		public EquipmentTemplateRewardDefinition[] EquipmentTemplates;
		public EquipmentInstanceRewardDefinition[] EquipmentInstances;
		public DecorationInstanceRewardDefinition[] DecorationInstances;
		public DecorationRewardDefinition[] DecorationPurchaseRights;
		public IglooSlotsRewardDefinition IglooSlots;
		public LotRewardDefinition[] Lots;
		public StructureInstanceRewardDefinition[] StructureInstances;
		public StructureRewardDefinition[] StructurePurchaseRights;
		public MusicTrackRewardDefinition[] MusicTracks;
		public LightingRewardDefinition[] Lighting;
		public EmoteRewardDefinition[] EmotePacks;
		public SizzleClipRewardDefinition[] SizzleClips;
		public ConsumableRewardDefinition[] Consumables;
		public DurableRewardDefinition[] Durables;
		public TubeRewardDefinition[] Tubes;
	}
}
