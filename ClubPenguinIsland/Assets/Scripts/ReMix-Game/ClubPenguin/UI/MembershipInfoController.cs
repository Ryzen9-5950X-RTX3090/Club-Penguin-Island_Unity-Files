using UnityEngine;
using DevonLocalization;
using UnityEngine.UI;

namespace ClubPenguin.UI
{
	public class MembershipInfoController : MonoBehaviour
	{
		public LocalizedText PriceTitleText;
		public GameObject PriceTitleSpinner;
		public LocalizedText RenewTitleText;
		public Text PriceText;
		public Text RenewDateText;
		public Text PriceLegalText;
		public Button ManageSubscriptionButton;
		public GameObject RenewalPanel;
		public PromptDefinitionKey MembershipDifferentPlatform;
	}
}
