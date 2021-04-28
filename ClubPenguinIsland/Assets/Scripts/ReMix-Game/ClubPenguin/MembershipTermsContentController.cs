using UnityEngine;
using UnityEngine.UI;
using Disney.Kelowna.Common;

namespace ClubPenguin
{
	public class MembershipTermsContentController : MonoBehaviour
	{
		public Button ConfirmButton;
		public Text ConfirmButtonText;
		public GameObject ConfirmLoadingImage;
		public Button DisabledConfirmButton;
		public Text PenguinName;
		public Button ChangePenguin;
		public GameObject ChangePenguinContainer;
		public ScrollRect TermsScrollRect;
		public Text Terms;
		public Text LegalText;
		public bool showCarrierBilling;
		public GameObject CarrierBillingPanel;
		public Text CostText;
		public Text DurationText;
		public Text CostTitleText;
		public Text CostTrialText;
		public Text CurrencyCode;
		public Button ChangeProduct;
		public GameObject ChangeProductPopup;
		public Transform OfferButtonContainer;
		public Button AcceptProductChoice;
		public SubscriptionOptionButton OfferButtonWithRecurringPrefab;
		public SubscriptionOptionButton OfferButtonWithoutRecurringPrefab;
		public GameObject Pending;
		public GameObject Ready;
		public GameObject MembershipInProcess;
		public PrefabContentKey WebViewPrefab;
	}
}
