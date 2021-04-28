using UnityEngine;
using UnityEngine.UI;
using ClubPenguin.Breadcrumbs;
using Disney.Kelowna.Common;

namespace ClubPenguin.UI
{
	public class QuestInventoryItem : MonoBehaviour
	{
		public Image ItemImage;
		public Image MoreInfoIcon;
		public GameObject ItemCountIcon;
		public Text ItemCountText;
		public NotificationBreadcrumb Breadcrumb;
		public TutorialBreadcrumb TutorialBreadcrumb;
		public PrefabContentKey imagePopupContentKey;
	}
}
