using UnityEngine;
using ClubPenguin.Net.Domain;

namespace ClubPenguin.PartyGames
{
	public class PartyGameLobbyMmoItemTeamDefinition : PartyGameLobbyDefinition
	{
		public Vector3 LobbyLocation;
		public int LobbyProp;
		public int LobbyLengthInSeconds;
		public LocomotionState LobbyLocomotionState;
		public bool IsBlockingJumpToFriend;
	}
}
