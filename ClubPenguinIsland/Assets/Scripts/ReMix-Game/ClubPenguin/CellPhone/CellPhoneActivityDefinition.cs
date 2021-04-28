using System;
using ClubPenguin.Core.StaticGameData;
using Disney.Kelowna.Common;

namespace ClubPenguin.CellPhone
{
	[Serializable]
	public class CellPhoneActivityDefinition : StaticGameDataDefinition
	{
		public ActivityScreenPriorities WidgetGlobalPriorityOverride;
		public ActivityScreenPriorities WidgetPriority;
		public PrefabContentKey WidgetPrefabKey;
		public bool IsMemberOnly;
		public string NotificationMessageToken;
	}
}
