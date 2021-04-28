using UnityEngine;
using UnityEngine.UI;
using ClubPenguin.Accessibility;

namespace ClubPenguin.UI
{
	public class TrayNotification : MonoBehaviour
	{
		public GameObject NotificationView;
		public GameObject NotificationButtonView;
		public Text messageWithoutButtons;
		public Text messageWithButtons;
		public Image TintableHeader;
		public SpeakAccessibilityOnStart AccessibilitySpeak;
	}
}
