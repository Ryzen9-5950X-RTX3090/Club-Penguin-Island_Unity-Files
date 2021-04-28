using UnityEngine;
using ClubPenguin.UI;
using UnityEngine.UI;

namespace ClubPenguin.Catalog
{
	public class CatalogStatsPageController : ACatalogController
	{
		public GameObject ShopItemRow;
		public GameObject ShopItem;
		public GameObject ScrollHeader;
		public GameObject ShopScrollerPrefab;
		public AvatarRenderTextureComponent AvatarRenderTextureComponent;
		public Text TotalSold;
		public Text TotalSubmitted;
		public Text BestSellerSold;
	}
}
