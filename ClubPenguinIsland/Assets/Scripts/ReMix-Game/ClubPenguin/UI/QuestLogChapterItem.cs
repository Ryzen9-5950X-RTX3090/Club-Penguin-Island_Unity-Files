using UnityEngine;
using UnityEngine.UI;
using ClubPenguin.Breadcrumbs;

namespace ClubPenguin.UI
{
	public class QuestLogChapterItem : MonoBehaviour
	{
		public Text TitleText;
		public Text LockedText;
		public GameObject AvailablePanel;
		public GameObject LockedPanel;
		public NotificationBreadcrumb Breadcrumb;
		public FeatureLabelBreadcrumb FeatureLabel;
	}
}
