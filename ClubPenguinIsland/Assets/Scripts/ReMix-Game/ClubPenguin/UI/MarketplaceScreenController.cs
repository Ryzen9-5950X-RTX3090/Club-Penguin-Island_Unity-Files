using UnityEngine;
using UnityEngine.UI;
using ClubPenguin.Tutorial;

namespace ClubPenguin.UI
{
	public class MarketplaceScreenController : MonoBehaviour
	{
		public Text HeaderText;
		public Text CoinsText;
		public GameObject ItemListHeader;
		public GameObject TopPanelContainer;
		public ScrollRect ContentScrollRect;
		public Transform ItemContainer;
		public Image BackgroundImage;
		public MarketplaceAd marketplaceAd;
		public DisneyStoreTrayAnimator TrayAnimator;
		public GameObject PopupButton;
		public GameObject LoadingModal;
		public Transform ConfirmationContainer;
		public TutorialDefinitionKey MarketPlaceTutorialDefinition;
		public TutorialDefinitionKey PartySuppliesTutorialDefinition;
		public TutorialDefinitionKey PartyGamesTutorialDefinition;
	}
}
