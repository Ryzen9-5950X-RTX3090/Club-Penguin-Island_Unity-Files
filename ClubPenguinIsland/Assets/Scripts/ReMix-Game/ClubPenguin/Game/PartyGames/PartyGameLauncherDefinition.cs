using System;
using ClubPenguin.Core.StaticGameData;
using ClubPenguin.Props;
using ClubPenguin.PartyGames;
using ClubPenguin;

namespace ClubPenguin.Game.PartyGames
{
	[Serializable]
	public class PartyGameLauncherDefinition : StaticGameDataDefinition
	{
		public enum LauncherMethods
		{
			PropTrigger = 0,
			ZoneSchedule = 1,
		}

		public int Id;
		public PropDefinition LobbyProp;
		public PartyGameDefinition PartyGame;
		public LauncherMethods LauncherMethod;
		public PropDefinition TriggerProp;
		public ZoneDefinition ScheduledZone;
		public int EveryXMinutesAfterTheHour;
	}
}
