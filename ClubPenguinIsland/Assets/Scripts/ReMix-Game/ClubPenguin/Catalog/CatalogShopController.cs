using ClubPenguin.UI;
using UnityEngine;
using UnityEngine.UI;

namespace ClubPenguin.Catalog
{
	public class CatalogShopController : ACatalogController
	{
		public VerticalScrollingLayoutElementPool Scroller;
		public GameObject ShopRowItem;
		public GameObject ClothingPurchase;
		public GameObject NoSubmissions;
		public CatalogSubmissionCompleteController SubmissionCompletePanel;
		public GameObject Loader;
		public GameObject CoinReward;
		public GameObject ShopScrollerPrefab;
		public Image SubNavScrollerBackgroundImage;
	}
}
