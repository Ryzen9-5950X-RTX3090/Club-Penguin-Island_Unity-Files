using UnityEngine;
using UnityEngine.UI;
using ClubPenguin;

namespace ClubPenguin.PartyGames
{
	public class TubeRaceEndGamePopupRow : MonoBehaviour
	{
		public Text NameText;
		public Text PlacementText;
		public Text ScoreText;
		public SpriteSelector TrophySelector;
		public GameObject TrophyGameObject;
		public Text TimeText;
		public Text ModifierText;
		public PartyGameEndPlacement MaxPlacementForTrophy;
		public TintSelector[] TintSelectors;
		public SpriteSelector ModifierSpriteSelector;
		public Text ModifierSignText;
	}
}
