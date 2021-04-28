using UnityEngine;
using UnityEngine.UI;

namespace ClubPenguin.UI
{
	public class SettingsWebView : MonoBehaviour
	{
		public Button ScrollUp;
		public Button ScrollDown;
		public GameObject WebViewerPanel;
		public Text TitleText;
		public GameObject LoadingPanel;
		public GameObject WebViewFailedPanel;
		public string UrlToken;
		public string TitleToken;
		public bool IsParentGated;
	}
}
