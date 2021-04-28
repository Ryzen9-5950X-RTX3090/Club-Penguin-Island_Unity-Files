using UnityEngine;

namespace ClubPenguin.Gui
{
	public class TrayController : MonoBehaviour
	{
		public RectTransform ChatBarTransform;
		public RectTransform SizzleEmoteBarTransform;
		public RectTransform NavigationTransform;
		public RectTransform ScreensTransform;
		public RectTransform NotificationsTransform;
		public float DefaultTrayHeight;
		public bool AnimateTrayHeight;
		public float TrayResizeRate;
		public RectTransform ControlOverlayTransform;
	}
}
