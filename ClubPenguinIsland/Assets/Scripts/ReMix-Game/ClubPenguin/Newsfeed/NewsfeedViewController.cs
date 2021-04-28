using UnityEngine;
using UnityEngine.UI;
using ClubPenguin.Breadcrumbs;

namespace ClubPenguin.Newsfeed
{
	public class NewsfeedViewController : MonoBehaviour
	{
		public Button ScrollUp;
		public Button ScrollDown;
		public GameObject LoadingPanel;
		public GameObject WebViewerPanel;
		public GameObject WebViewFailedPanel;
		public StaticBreadcrumbDefinitionKey Breadcrumb;
	}
}
