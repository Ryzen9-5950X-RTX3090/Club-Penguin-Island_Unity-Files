using System;
using ClubPenguin.Core.StaticGameData;
using Disney.Kelowna.Common;
using ClubPenguin.Core;

namespace ClubPenguin.UI
{
	[Serializable]
	public class MarketingLoadingScreenDefinition : StaticGameDataDefinition
	{
		public int Id;
		public PrefabContentKey[] ScreenPrefabContentKeys;
		public ScheduledEventDateDefinitionKey DateDefinitionKey;
	}
}
