using UnityEngine.UI;
using UnityEngine;
using ClubPenguin.UI;

namespace ClubPenguin
{
	public class HomeScreenPortraitController : HomeScreenController
	{
		public Button PlayButton;
		public GameObject PlayButtonSpinner;
		public Button ContinuePlayButton;
		public GameObject ContinuePlayButtonSpinner;
		public Button ReplayIntroButton;
		public Button LogoutButton;
		public Text LogoutButtonText;
		public GameObject LogoutButtonSpinner;
		public LoadingBar PrecacheLoadingBar;
	}
}
