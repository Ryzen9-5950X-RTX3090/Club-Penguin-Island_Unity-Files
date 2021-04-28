using UnityEngine;
using UnityEngine.UI;
using ClubPenguin.Breadcrumbs;

namespace ClubPenguin.UI
{
	public class QuestLogAdventuresItem : MonoBehaviour
	{
		public Text HeaderText;
		public Text CoinsText;
		public Text XPText;
		public GameObject CoinsCheck;
		public GameObject XPCheck;
		public GameObject MaxLevelIcon;
		public GameObject ContentPanel;
		public GameObject CompletedPanel;
		public GameObject StartButton;
		public GameObject ReplayButton;
		public GameObject ResumeButton;
		public GameObject ResumeButton2;
		public GameObject RestartButton;
		public GameObject CompletedButton;
		public GameObject GotoButton;
		public GameObject OffTextNextQuest;
		public GameObject OffTextTime;
		public GameObject LockedOverlay;
		public GameObject MemberLockIcon;
		public GameObject LevelLockIcon;
		public NotificationBreadcrumb breadcrumb;
		public PersistentBreadcrumbTypeDefinitionKey BreadcrumbType;
	}
}
