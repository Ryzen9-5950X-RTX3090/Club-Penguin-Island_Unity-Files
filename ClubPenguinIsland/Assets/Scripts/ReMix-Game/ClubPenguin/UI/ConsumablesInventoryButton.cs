using UnityEngine;
using UnityEngine.UI;
using ClubPenguin.Breadcrumbs;

namespace ClubPenguin.UI
{
	public class ConsumablesInventoryButton : MonoBehaviour
	{
		public Image Icon;
		public Button SelectButton;
		public Text Title;
		public Text InventoryCount;
		public GameObject ShareableIcon;
		public NotificationBreadcrumb breadcrumb;
	}
}
