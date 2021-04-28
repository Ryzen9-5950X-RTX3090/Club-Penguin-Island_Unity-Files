using System;
using ClubPenguin.Core.StaticGameData;
using Disney.Kelowna.Common;
using ClubPenguin.Core;
using UnityEngine;

namespace ClubPenguin.Props
{
	[Serializable]
	public class PropDefinition : StaticGameDataDefinition
	{
		public enum PropTypes
		{
			Consumable = 0,
			InteractiveObject = 1,
			Durable = 2,
			PartyGame = 3,
		}

		public enum ConsumableExperience
		{
			OneShot = 0,
			PlayerHeld = 1,
			World = 2,
			PartyGameLobby = 3,
		}

		public enum ConsumableSortCategory
		{
			Solo = 0,
			Share = 1,
			Deploy = 2,
			InteractDeploy = 3,
		}

		public int Id;
		public string Name;
		public string Description;
		public PropTypes PropType;
		public PrefabContentKey PropAssetContentKey;
		public PrefabContentKey ExperienceContentKey;
		public SpriteContentKey IconContentKey;
		public string NameOnServer;
		public ConsumableExperience ExperienceType;
		public bool QuestOnly;
		public int Cost;
		public ConsumableSortCategory SortCategory;
		public float TimeToLive;
		public int ActionCount;
		public float RewardRadius;
		public RewardDefinition TotalReward;
		public RewardDefinition MinPerPlayerReward;
		public bool Shareable;
		public string RecipientConsumable;
		public bool ServerAddedItem;
		public RetrieveType RetrieveAnimType;
		public int TotalItemQuantity;
		public bool IsControlsResetOnStore;
		public TagDefinition[] Tags;
		[SerializeField]
		private bool isMemberOnly;
		public int ShardForNonMemberAccess;
		public bool HasSpecialMarket;
		[SerializeField]
		public ScheduledEventDateDefinitionKey AvailabilitySchedule;
		public string[] QuestNameExclusions;
		public string[] QuestObjectiveExclusions;
	}
}
