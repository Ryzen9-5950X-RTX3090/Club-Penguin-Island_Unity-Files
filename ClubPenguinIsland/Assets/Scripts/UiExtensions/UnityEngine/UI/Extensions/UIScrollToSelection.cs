using UnityEngine;
using System.Collections.Generic;

namespace UnityEngine.UI.Extensions
{
	public class UIScrollToSelection : MonoBehaviour
	{
		public enum ScrollType
		{
			VERTICAL = 0,
			HORIZONTAL = 1,
			BOTH = 2,
		}

		[SerializeField]
		private ScrollType scrollDirection;
		[SerializeField]
		private float scrollSpeed;
		[SerializeField]
		private bool cancelScrollOnInput;
		[SerializeField]
		private List<KeyCode> cancelScrollKeycodes;
	}
}
