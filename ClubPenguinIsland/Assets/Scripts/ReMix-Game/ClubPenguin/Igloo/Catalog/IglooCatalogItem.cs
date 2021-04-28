using UnityEngine;
using UnityEngine.UI;
using ClubPenguin.Breadcrumbs;
using ClubPenguin;

namespace ClubPenguin.Igloo.Catalog
{
	public class IglooCatalogItem : MonoBehaviour
	{
		[SerializeField]
		private Text titleText;
		[SerializeField]
		private Text priceText;
		[SerializeField]
		private RawImage iconImage;
		[SerializeField]
		private GameObject lockPanel;
		[SerializeField]
		private GameObject memberLockBadge;
		[SerializeField]
		private GameObject levelLockBadge;
		[SerializeField]
		private Text levelLockText;
		[SerializeField]
		private GameObject mascotBadges;
		[SerializeField]
		private PersistentBreadcrumbTypeDefinitionKey structureBreadcrumbType;
		[SerializeField]
		private PersistentBreadcrumbTypeDefinitionKey decorationBreadcrumbType;
		[SerializeField]
		private GameObject structureSizeIcon;
		[SerializeField]
		private SpriteSelector structureIconSpriteSelector;
		public NotificationBreadcrumb breadcrumb;
	}
}
