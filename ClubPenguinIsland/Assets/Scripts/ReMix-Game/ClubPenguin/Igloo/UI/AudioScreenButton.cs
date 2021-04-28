using UnityEngine;
using UnityEngine.UI;
using ClubPenguin.Breadcrumbs;

namespace ClubPenguin.Igloo.UI
{
	public class AudioScreenButton : MonoBehaviour
	{
		public Text SongName;
		public Image GenreIcon;
		public GameObject SelectedHighlight;
		public Image GenreIconBackgroundToTint;
		public Button PreviewButton;
		public Button ApplyButton;
		public Button StopButton;
		public Button PauseButton;
		public GameObject LockedPanel;
		public GameObject ProgressionStar;
		public Text ProgressionBadgeText;
		public GameObject MascotBadges;
		public GameObject MemberBadge;
		public PersistentBreadcrumbTypeDefinitionKey audioTypeBreadcrumb;
		public StaticBreadcrumbDefinitionKey audioBreadcrumb;
		public NotificationBreadcrumb breadcrumb;
	}
}
