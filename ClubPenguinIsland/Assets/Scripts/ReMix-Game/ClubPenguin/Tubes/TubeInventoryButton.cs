using UnityEngine;
using UnityEngine.UI;
using ClubPenguin.Breadcrumbs;

namespace ClubPenguin.Tubes
{
	public class TubeInventoryButton : MonoBehaviour
	{
		public Image Icon;
		public Text Title;
		public Button SelectButton;
		public NotificationBreadcrumb breadcrumb;
		public TutorialBreadcrumb TutorialBreadcrumb;
		public PersistentBreadcrumbTypeDefinitionKey BreadcrumbType;
		public GameObject SelectedPanel;
	}
}
