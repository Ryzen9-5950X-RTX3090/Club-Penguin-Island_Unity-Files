using UnityEngine;
using ClubPenguin.UI;
using ClubPenguin.Breadcrumbs;

namespace ClubPenguin.Catalog
{
	public class CatalogShopItemScroller : MonoBehaviour
	{
		public int IndexOffset;
		public int lastNumShopRows;
		public int numShopRows;
		public int lastRowNumItems;
		public bool isShopScrollInitialized;
		public int CatalogShopItemsPerRow;
		public GameObject ClothingPurchase;
		public bool HideItemName;
		public int StandaloneCatalogShopItemsPerRow;
		public VerticalScrollingLayoutElementPool Scroller;
		public CatalogShopBuyPanelController buyPanel;
		public PersistentBreadcrumbTypeDefinitionKey BreadcrumbType;
	}
}
