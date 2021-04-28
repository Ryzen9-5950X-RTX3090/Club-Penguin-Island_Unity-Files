using System;
using ClubPenguin.Core.StaticGameData;
using ClubPenguin.Core;
using System.Collections.Generic;
using Disney.Kelowna.Common;

namespace ClubPenguin.PartyGames
{
	[Serializable]
	public class PartyGameDefinition : StaticGameDataDefinition
	{
		[Serializable]
		public class PartyGameReward
		{
			public PartyGameEndPlacement Placement;
			public RewardDefinition Reward;
		}

		public enum LobbyTypes
		{
			STRICT = 0,
			STRICT_USER_START = 1,
			MMOITEM_TEAM = 2,
		}

		public enum GameTypes
		{
			SCAVENGER_HUNT = 0,
			FISH_BUCKET = 1,
			FIND_FOUR = 2,
			DANCE_BATTLE = 3,
			TUBE_RACE_RED = 4,
			TUBE_RACE_BLUE = 5,
		}

		public int Id;
		public string Name;
		public List<PartyGameDefinition.PartyGameReward> Rewards;
		public PartyGameDataDefinition GameData;
		public PartyGameLobbyDefinition LobbyData;
		public LobbyTypes LobbyType;
		public GameTypes GameType;
		public int MinPlayerCount;
		public int MaxPlayerCount;
		public PrefabContentKey AudioPrefab;
		public int NumTeams;
		public bool IsBlockingJumpToFriend;
	}
}
