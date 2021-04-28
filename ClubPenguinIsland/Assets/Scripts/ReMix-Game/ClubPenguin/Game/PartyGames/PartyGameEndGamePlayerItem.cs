using UnityEngine;
using UnityEngine.UI;
using ClubPenguin;

namespace ClubPenguin.Game.PartyGames
{
	public class PartyGameEndGamePlayerItem : MonoBehaviour
	{
		public Text PlayerNameText;
		public Text ScoreText;
		public SpriteSelector PlayerIcon;
		public GameObject TrophyIcon;
		public Animator TrophyAnimator;
		public GameObject SelectedBG;
		public Image ScoreBG;
		public GameObject FirstPlaceEffects;
	}
}
