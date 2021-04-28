using UnityEngine;
using UnityEngine.UI;
using ClubPenguin;
using ClubPenguin.Net;

namespace ClubPenguin.UI
{
	public class PlayerCardController : MonoBehaviour
	{
		public Text NameText;
		public Text StatusText;
		public SpriteSelector MembershipSpriteSelector;
		public OnOffSpriteSelector OnlineSpriteSelector;
		public AvatarRenderTextureComponent AvatarRenderTextureComponent;
		public LevelProgressDisplay LevelProgressDisplay;
		public PlayerDetailsController DetailsController;
		public PlayerCardActionListController ActionListController;
		public PassportCodeController PassportCodeController;
		public GameObject LocalXpPanel;
		public GameObject LocalIglooButton;
		public FriendStatus FriendStatus;
		public bool IsShowingJumpPrompt;
	}
}
