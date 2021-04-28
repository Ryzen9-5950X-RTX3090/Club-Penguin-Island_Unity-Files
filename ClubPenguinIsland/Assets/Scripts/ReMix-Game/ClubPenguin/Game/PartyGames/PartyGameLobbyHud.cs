using UnityEngine;
using UnityEngine.UI;
using ClubPenguin;

namespace ClubPenguin.Game.PartyGames
{
	public class PartyGameLobbyHud : MonoBehaviour
	{
		public Text HeaderText;
		public GameObject PlayersPanel;
		public GameObject LoadingSpinner;
		public TintSelector[] PlayerJoinedIcons;
		public Button StartGameButton;
		public string PlayerJoinedSFXTrigger;
	}
}
