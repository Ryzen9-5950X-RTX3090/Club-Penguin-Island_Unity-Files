using UnityEngine.UI;
using ClubPenguin.UI;
using UnityEngine;

namespace ClubPenguin
{
	public class LoginRememberMeListButton : LoginPopupContentController
	{
		public Text DisplayName;
		public Button LoginButton;
		public Button RemoveButton;
		public AvatarRenderTextureComponent AvatarIcon;
		public SpriteSelector MembershipSelector;
		public Image LoginSpinner;
		public GameObject BannedText;
		public float BannedAlpha;
		public Sprite BannedButton;
		public Sprite BannedSpinner;
		public string FSMTarget;
		public string RememberMeSingleEvent;
	}
}
