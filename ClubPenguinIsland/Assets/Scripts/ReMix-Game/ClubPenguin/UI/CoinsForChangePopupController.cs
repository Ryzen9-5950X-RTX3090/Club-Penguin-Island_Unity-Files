using UnityEngine;
using UnityEngine.UI;

namespace ClubPenguin.UI
{
	public class CoinsForChangePopupController : AnimatedPopup
	{
		public GameObject DonatePanel;
		public GameObject DonateButtonsPanel;
		public GameObject ThankYouTextPanel;
		public GameObject ThankYouButtonPanel;
		public GameObject MoreInfoPanel;
		public GameObject DefaultInfoPanel;
		public Text DonatedCoinsText;
		public GameObject[] DonateButtons;
		public GameObject[] NotEnoughDonateButtons;
		public int[] DonationAmounts;
		public GameObject LoadingOverlay;
		public CoinsForChangeCounter Counter;
		public string RewardHeaderToken;
		public float RewardScreenDelay;
	}
}
