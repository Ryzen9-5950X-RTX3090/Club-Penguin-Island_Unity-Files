using UnityEngine;
using ClubPenguin.UI;
using UnityEngine.UI;
using ClubPenguin.Breadcrumbs;

namespace ClubPenguin.Igloo.Catalog
{
	public class IglooCatalogPurchaseConfirmation : MonoBehaviour
	{
		public StoreItemConfirmationPlacement ConfirmationPlacement;
		[SerializeField]
		private Image iconImage;
		[SerializeField]
		private Text titleText;
		[SerializeField]
		private Text descriptionText;
		[SerializeField]
		private GameObject purchasePanel;
		[SerializeField]
		private GameObject buyButton;
		[SerializeField]
		private GameObject disabledBuyButton;
		[SerializeField]
		private GameObject needMoreCoinsTooltip;
		[SerializeField]
		private Text costText;
		[SerializeField]
		private Text countText;
		[SerializeField]
		private GameObject successPanel;
		[SerializeField]
		private GameObject usePurchasedItemButton;
		[SerializeField]
		private Text usePurchasedItemText;
		[SerializeField]
		private PersistentBreadcrumbTypeDefinitionKey decorationTypeBreadcrumb;
		[SerializeField]
		private StaticBreadcrumbDefinitionKey decorationBreadcrumb;
		[SerializeField]
		private PersistentBreadcrumbTypeDefinitionKey structureTypeBreadcrumb;
		[SerializeField]
		private StaticBreadcrumbDefinitionKey structureBreadcrumb;
	}
}
