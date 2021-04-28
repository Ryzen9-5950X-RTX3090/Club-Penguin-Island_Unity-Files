using UnityEngine;

namespace ClubPenguin.UI
{
	public class OpenCloseTweener : MonoBehaviour
	{
		public float OpenSeconds;
		public float CloseSeconds;
		public iTween.EaseType OpenEasing;
		public iTween.EaseType CloseEasing;
		public bool IsTransitioning;
	}
}
