using UnityEngine;

namespace ClubPenguin.UI
{
	public class ScrollRectSnapTo : MonoBehaviour
	{
		public enum HorizontalSnapPosition
		{
			left = 0,
			right = 1,
			center = 2,
		}

		public enum VerticalSnapPosition
		{
			top = 0,
			bottom = 1,
			center = 2,
		}

		public HorizontalSnapPosition HorizontalSnapPos;
		public VerticalSnapPosition VerticalSnapPos;
		public float SnapAtSpeed;
		public float SnapTweenTimeSec;
	}
}
