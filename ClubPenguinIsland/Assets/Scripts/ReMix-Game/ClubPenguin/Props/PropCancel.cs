using UnityEngine;

namespace ClubPenguin.Props
{
	public class PropCancel : MonoBehaviour
	{
		[SerializeField]
		private bool ShowConfirmationPopup;
		[SerializeField]
		private bool WatchActionEventCancel;
		[SerializeField]
		private string i18nConfirmationTitleText;
		[SerializeField]
		private string i18nConfirmationBodyText;
		[SerializeField]
		private Sprite ImageOverride;
		public bool RestoreTouchPadControlsOnCancel;
	}
}
