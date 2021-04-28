using UnityEngine;
using UnityEngine.UI;
using ClubPenguin;

namespace ClubPenguin.UI
{
	public class AbstractPlayerListItem : MonoBehaviour
	{
		public Text NameText;
		public GameObject PreloadPanel;
		public GameObject FriendAvatarIconContainer;
		public RawImage FriendAvatarIcon;
		public GameObject OfflineIcon;
		public GameObject MembershipBadgeIcon;
		public SpriteSelector MembershipSpriteSelector;
	}
}
