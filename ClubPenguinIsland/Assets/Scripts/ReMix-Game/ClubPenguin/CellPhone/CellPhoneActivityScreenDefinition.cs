using ClubPenguin.Core.StaticGameData;
using System;
using ClubPenguin.Adventure;
using ClubPenguin.Core;
using Disney.Kelowna.Common;
using System.Collections.Generic;

namespace ClubPenguin.CellPhone
{
	public class CellPhoneActivityScreenDefinition : StaticGameDataDefinition
	{
		[Serializable]
		public class ProgressionTipsData
		{
			public MascotDefinition Mascot;
			public string[] Tips;
		}

		[Serializable]
		public class ProgressionLevelData
		{
			public int Level;
			public RewardDefinition RewardItems;
		}

		public ActivityScreenPriorities DailySpinPriority;
		public ActivityScreenPriorities ActiveQuestPriority;
		public ActivityScreenPriorities EventPriority;
		public ActivityScreenPriorities FeaturePriority;
		public ActivityScreenPriorities DailiesPriority;
		public ActivityScreenPriorities AvailableQuestPriority;
		public ActivityScreenPriorities ActivityPriority;
		public ActivityScreenPriorities SalesPriority;
		public ActivityScreenPriorities ProgressionPriority;
		public ActivityScreenPriorities ClaimableRewardPriority;
		public PrefabContentKey ActiveQuestWidgetKey;
		public PrefabContentKey DailyChallengeWidgetKey;
		public PrefabContentKey ProgressionWidgetKey;
		public PrefabContentKey AvailableQuestWidgetKey;
		public PrefabContentKey EventTitleWidgetKey;
		public PrefabContentKey FeatureTitleWidgetKey;
		public PrefabContentKey RecurringActivityWidgetKey;
		public PrefabContentKey DailySpinWidgetKey;
		public float PercentToNextLevelToShowProgressionWidget;
		public List<CellPhoneActivityScreenDefinition.ProgressionTipsData> TipsData;
		public List<CellPhoneActivityScreenDefinition.ProgressionLevelData> LevelData;
		public List<CellPhoneEventActivityDefinition> ScheduledEvents;
		public List<CellPhoneFeatureActivityDefinition> ScheduledFeatures;
		public List<CellPhoneRecurringLocationActivityDefinition> ScheduledRecurringActivities;
		public List<CellPhoneClaimableRewardActivityDefinition> ScheduledClaimableRewardActivities;
		public List<CellPhoneSaleActivityDefinition> ScheduledSales;
	}
}
