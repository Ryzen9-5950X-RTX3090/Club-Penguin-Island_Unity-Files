using ClubPenguin.UI;
using UnityEngine.UI;
using UnityEngine;

namespace ClubPenguin
{
	public class LoginPopupRememberedSingleController : LoginPopupContentController
	{
		public InputFieldValidator PasswordField;
		public Button RemoveButton;
		public Button PlayButton;
		public Toggle RememberPassword;
		public Text DisplayName;
		public SpriteSelector MembershipSelector;
		public GameObject BannedOverlay;
		public OnOffGameObjectSelector SoftLoginSelector;
		public string FSMTarget;
		public string RemovedEvent;
	}
}
