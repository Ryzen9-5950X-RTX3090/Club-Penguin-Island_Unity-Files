using UnityEngine;
using ClubPenguin;
using ClubPenguin.PartyGames;

namespace ClubPenguin.Game.PartyGames
{
	public class TubeRaceLobby : MonoBehaviour
	{
		public TubeRaceLobbyMmoItemObserver MmoItemObserver;
		public NetworkObjectController LobbyInteractionObject;
		public Transform LobbyPosition;
		public Transform LobbyExitPosition;
		public PartyGameDefinition GameDefinition;
		public TubeRaceDefinition RaceDefinition;
	}
}
