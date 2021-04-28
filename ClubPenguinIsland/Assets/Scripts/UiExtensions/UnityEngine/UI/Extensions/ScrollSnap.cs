using UnityEngine;
using UnityEngine.UI;

namespace UnityEngine.UI.Extensions
{
	public class ScrollSnap : MonoBehaviour
	{
		public enum ScrollDirection
		{
			Horizontal = 0,
			Vertical = 1,
		}

		public ScrollDirection direction;
		public Button nextButton;
		public Button prevButton;
		public int itemsVisibleAtOnce;
		public bool autoLayoutItems;
		public bool linkScrolbarSteps;
		public bool linkScrolrectScrollSensitivity;
		public bool useFastSwipe;
		public int fastSwipeThreshold;
	}
}
