using UnityEngine;
using System;
using UnityEngine.Events;

namespace UnityEngine.UI.Extensions
{
	public class ScrollSnapBase : MonoBehaviour
	{
		[Serializable]
		public class SelectionChangeStartEvent : UnityEvent
		{
		}

		[Serializable]
		public class SelectionPageChangedEvent : UnityEvent<int>
		{
		}

		[Serializable]
		public class SelectionChangeEndEvent : UnityEvent<int>
		{
		}

		[SerializeField]
		public int StartingScreen;
		[SerializeField]
		public float PageStep;
		public GameObject Pagination;
		public GameObject NextButton;
		public GameObject PrevButton;
		public float transitionSpeed;
		public bool UseFastSwipe;
		public int FastSwipeThreshold;
		public int SwipeVelocityThreshold;
		public RectTransform MaskArea;
		public float MaskBuffer;
		public bool UseParentTransform;
		public GameObject[] ChildObjects;
		[SerializeField]
		private SelectionChangeStartEvent m_OnSelectionChangeStartEvent;
		[SerializeField]
		private SelectionPageChangedEvent m_OnSelectionPageChangedEvent;
		[SerializeField]
		private SelectionChangeEndEvent m_OnSelectionChangeEndEvent;
	}
}
