using UnityEngine;
using UnityEngine.UI;
using ClubPenguin.Breadcrumbs;

namespace ClubPenguin.UI
{
	public class MarketplaceItem : MonoBehaviour
	{
		public Button Button;
		public RawImage ItemIcon;
		public DiscountableItemPriceTag PriceTag;
		public Text ItemNameText;
		public GameObject OutOfStockImage;
		public GameObject LevelIcon;
		public Text LevelIconText;
		public GameObject MemberTag;
		public Sprite DisabledButtonAsset;
		public GameObject SpecialItemEffect;
		public FeatureLabelBreadcrumb FeatureLabel;
	}
}
