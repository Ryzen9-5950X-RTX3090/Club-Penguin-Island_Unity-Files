using UnityEngine;

namespace UnityEngine.UI.Extensions
{
	public class UIVerticalScroller : MonoBehaviour
	{
		public RectTransform _scrollingPanel;
		public GameObject[] _arrayOfElements;
		public RectTransform _center;
		public int StartingIndex;
		public GameObject ScrollUpButton;
		public GameObject ScrollDownButton;
	}
}
