using UnityEngine;
using System;
using Disney.Kelowna.Common;
using ClubPenguin.UI;
using ClubPenguin.Core;

namespace ClubPenguin.Adventure
{
	public class QuestDefinition : ScriptableObject
	{
		[Serializable]
		public struct DQuestItem
		{
			public enum QuestItemClickAction
			{
				none = 0,
				loadPopup = 1,
				showTrayScreen = 2,
				openChat = 3,
				useConsumable = 4,
				showImagePopup = 5,
			}

			public string DisplayName;
			public string Name;
			public string ItemText;
			public SpriteContentKey ItemInventoryContentKey;
			public PrefabContentKey ItemUIContentKey;
			public bool IsHiddenWhenNotCollected;
			public QuestItemClickAction ClickAction;
			public string ClickActionArg;
			public PrefabContentKey PopupContentKey;
			public SpriteContentKey PopupImageContentKey;
			public DButton UseItemButton;
		}

		public bool Prototyped;
		public bool OverridesFirstObjective;
		public bool IsReplayable;
		public bool IsPausable;
		public MascotDefinition Mascot;
		public int ChapterNumber;
		public int QuestNumber;
		public string Title;
		public string AbbreviatedTitle;
		[TextAreaAttribute]
		public string Description;
		public string SplashScreenText;
		public DDialogPanel[] Instructions;
		public DQuestItem[] QuestItems;
		public RewardDefinition StartReward;
		public RewardDefinition CompleteReward;
		public RewardDefinition[] ObjectiveRewards;
		public bool IsRewardPopupSupressed;
		public string RewardPopupPrefabOverride;
		public string RewardPopupMusicOverride;
		public int LevelRequirement;
		public QuestDefinition[] CompletedQuestRequirement;
		public TimeSpanUnityWrapper TimeLock;
		public bool isMemberOnly;
	}
}
