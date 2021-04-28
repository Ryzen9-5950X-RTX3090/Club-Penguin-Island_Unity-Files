using UnityEngine;
using UnityEngine.UI;

namespace ClubPenguin.UI
{
	public class CoinsForChangeCounter : MonoBehaviour
	{
		public Text CoinCountText;
		public TextMesh CoinCountTextMesh;
		public Text[] CoinCountDigits;
		public GameObject BrokenState;
		public CoinsForChangeTracker Tracker;
		public int CoinCountSpeed;
	}
}
