using UnityEngine;
using ClubPenguin.UI;
using ClubPenguin.PartyGames;

namespace ClubPenguin.Game.PartyGames
{
	public class TubeRaceBanner : MonoBehaviour
	{
		public TubeRaceLobbyMmoItemObserver MmoItemObserver;
		public CountdownTimer Timer;
		public PartyGameDefinition GameDefinition;
		public string StartPlatformAnimatorTrigger;
		public GameObject WaitPanel;
		public GameObject RaceInPanel;
		public GameObject JoinRacePanel;
		public GameObject ReadyPanel;
		public GameObject SetPanel;
		public GameObject GoPanel;
		public Animator StartPlatformAnimator;
		public int SecondsForReadyState;
		public int SecondsForJoinState;
		public int SecondsForRaceInState;
	}
}
