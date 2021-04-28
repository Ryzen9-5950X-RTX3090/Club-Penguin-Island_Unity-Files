using UnityEngine.UI;
using UnityEngine;
using ClubPenguin.Breadcrumbs;

namespace ClubPenguin.UI
{
	public class DisneyStorePurchaseConfirmation : AbstractDisneyStoreConfirmation
	{
		public Image IconImage;
		public Text TitleText;
		public Text DescriptionText;
		public Text CostText;
		public Text CountText;
		public GameObject PurchasePanel;
		public GameObject SuccessPanel;
		public GameObject EquipPanel;
		public GameObject CoinsPanel;
		public GameObject BuyButton;
		public GameObject DisabledButton;
		public GameObject SalePanel;
		public Text SaleText;
		public StaticBreadcrumbDefinitionKey Breadcrumb;
		public PersistentBreadcrumbTypeDefinitionKey BreadcrumbType;
	}
}
