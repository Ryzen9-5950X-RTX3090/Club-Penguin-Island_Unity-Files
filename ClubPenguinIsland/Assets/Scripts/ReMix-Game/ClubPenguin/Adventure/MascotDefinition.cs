using System;
using ClubPenguin.Core.StaticGameData;
using UnityEngine;
using Disney.Kelowna.Common;
using ClubPenguin;

namespace ClubPenguin.Adventure
{
	[Serializable]
	public class MascotDefinition : StaticGameDataDefinition
	{
		[Serializable]
		public struct QuestChapterData
		{
			public int Number;
			public bool IsPreviewChapter;
			public string Name;
		}

		public string i18nDisplayTitle;
		public string i18nAdventureLogTitleText;
		public string AbbreviatedName;
		public bool IsQuestGiver;
		public bool ShowComingSoonInLog;
		public QuestChapterData[] ChapterData;
		public int QuestReminderTutorialId;
		public int QuestLogPriority;
		public string GoForItNotificationText;
		public DialogList QuestGiverDialog;
		public DialogList QuestGiverDialogMemberLocked;
		public DialogList QuestGiverDialogLevelLocked;
		public DialogList QuestGiverDialogTimeLocked;
		public DialogList QuestGiverDialogAllComplete;
		public DialogList RandomQuestDialog;
		public DialogList RandomWorldDialog;
		public string QuestIntroMusic;
		public string QuestEndMusic;
		public Color TextColor;
		public Color DialogBubbleArrowColor;
		public Color NavigationArrowColor;
		public Color BannerTextColor;
		public Color CommunicatorBGColor;
		public Color CommunicatorBGShadowColor;
		public Color XPTintColor;
		public FontContentKey FontContentKey;
		public int SpeechBubbleFontSize;
		public int MessageBubbleFontSize;
		public SpriteContentKey BubbleContentKey;
		public SpriteContentKey HudAvatarContentKey;
		public SpriteContentKey CommunicatorIconContentKey;
		public PrefabContentKey RewardPopupXPContentKey;
		public PrefabContentKey RewardPopupChestContentKey;
		public SpriteContentKey QuestStatusIconContentKey;
		public SpriteContentKey ProgressionLockedIconContentKey;
		public Vector3 SpawnPlayerNearMascotPosition;
		public ZoneDefinition Zone;
	}
}
