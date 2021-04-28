using UnityEngine;
using UnityEngine.UI;
using ClubPenguin;

namespace ClubPenguin.Game.PartyGames
{
	public class FishBucketPlayerHud : MonoBehaviour
	{
		public Text CountText;
		public SpriteSelector BucketSpriteSelector;
		public TintSelector BgTintSelector;
		public GameObject ActiveOutline;
		public Text PlayerNameText;
		public float ScoreUpdateDelay;
		public string PointIncreaseSFXTrigger;
		public string PointDecreaseSFXTrigger;
	}
}
