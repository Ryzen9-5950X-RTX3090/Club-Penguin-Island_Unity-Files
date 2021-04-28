using UnityEngine;
using UnityEngine.UI;
using ClubPenguin.Breadcrumbs;
using ClubPenguin;

namespace ClubPenguin.ClothingDesigner.Inventory
{
	public class EquipmentIcon : MonoBehaviour
	{
		public GameObject ItemContentGameObject;
		public GameObject CreateButtonGameObject;
		public GameObject CatalogButtonGameObject;
		public GameObject Item;
		public GameObject LoadingSpinner;
		public RawImage ItemIcon;
		public Animator SelectedAnimator;
		public NotificationBreadcrumb Breadcrumb;
		public TutorialBreadcrumb TutorialBreadcrumb;
		public PersistentBreadcrumbTypeDefinitionKey BreadcrumbType;
		[SerializeField]
		private GameObject memberLockImage;
		[SerializeField]
		private TintSelector glossTintSelector;
	}
}
