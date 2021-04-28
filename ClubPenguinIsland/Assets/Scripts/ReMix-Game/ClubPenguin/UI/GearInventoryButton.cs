using UnityEngine;
using UnityEngine.UI;
using ClubPenguin.Breadcrumbs;

namespace ClubPenguin.UI
{
	public class GearInventoryButton : MonoBehaviour
	{
		public Image Icon;
		public Button SelectButton;
		public Text Title;
		public NotificationBreadcrumb breadcrumb;
		public TutorialBreadcrumb TutorialBreadcrumb;
		public GameObject ItemCountIcon;
		public GameObject SelectedPanel;
		public PersistentBreadcrumbTypeDefinitionKey ConsumableBreadcrumbType;
		public PersistentBreadcrumbTypeDefinitionKey GearBreadcrumbType;
		public PersistentBreadcrumbTypeDefinitionKey PartyGameBreadcrumbType;
	}
}
