using UnityEngine;
using ClubPenguin.PartyGames;

namespace ClubPenguin.Game.PartyGames
{
	public class TubeRaceLeaderBoard : MonoBehaviour
	{
		public float TimeToShowFinishScreenInSeconds;
		public PartyGameDefinition GameDefinition;
		public TubeRaceLeaderboardItem[] LeaderBoardItems;
		public GameObject DefaultScreen;
		public GameObject FinishScreen;
	}
}
