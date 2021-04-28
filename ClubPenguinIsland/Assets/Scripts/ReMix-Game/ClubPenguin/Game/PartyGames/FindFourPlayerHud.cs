using UnityEngine;
using ClubPenguin;
using UnityEngine.UI;
using ClubPenguin.UI;

namespace ClubPenguin.Game.PartyGames
{
	public class FindFourPlayerHud : MonoBehaviour
	{
		public SpriteSelector TokenSpriteSelector;
		public Text PlayerNameText;
		public TintSelector BgTintSelector;
		public GameObject ActiveOutline;
		public GameObject TimerObject;
		public UITimer Timer;
	}
}
