using UnityEngine;
using ClubPenguin;

namespace ClubPenguin.Cinematography
{
	internal class CameraZoomClamped : MonoBehaviour
	{
		public ZoomClampedSettings[] ZoomSettings;
		public float StartingZoomPercent;
		public iTween.EaseType EaseType;
		public float TweenTime;
		public PinchZoomInput PinchZoomInput;
	}
}
