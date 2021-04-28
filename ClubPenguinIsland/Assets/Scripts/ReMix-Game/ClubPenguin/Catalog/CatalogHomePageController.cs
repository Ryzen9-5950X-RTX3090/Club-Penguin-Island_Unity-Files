using UnityEngine;
using UnityEngine.UI;
using ClubPenguin.Tutorial;

namespace ClubPenguin.Catalog
{
	public class CatalogHomePageController : ACatalogController
	{
		public GameObject BillboardPanel;
		public GameObject GoButton;
		public GameObject SubmittedButton;
		public GameObject Preloader;
		public GameObject CatalogDailyChallengeScrollerPrefab;
		public GameObject ScrollerContainer;
		public Image BackgroundImage;
		public Image TodaysChallengeBackground;
		public Text ThemeTitle;
		public Text ThemeDescription;
		public Text ThemeEndingText;
		public Text TimeText;
		public GameObject ChallengeMemberLock;
		public GameObject ChallengeProgressionLock;
		public Text ChallengeProgressionLockText;
		public Text CoinReward;
		public TutorialDefinitionKey Catalog1TutorialDefinition;
		public TutorialDefinitionKey Catalog2TutorialDefinition;
	}
}
