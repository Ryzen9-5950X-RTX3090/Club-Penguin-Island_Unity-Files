using ClubPenguin.Core.StaticGameData;
using Disney.Kelowna.Common;
using ClubPenguin.Core;

namespace ClubPenguin
{
	public class HomeScreenTakeoverDefinition : StaticGameDataDefinition
	{
		public string Id;
		public PrefabContentKey TakeOverPrefabContentKey;
		public ScheduledEventDateDefinitionKey DateDefinitionKey;
	}
}
