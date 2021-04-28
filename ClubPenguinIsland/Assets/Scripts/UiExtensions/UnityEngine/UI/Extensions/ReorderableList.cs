using UnityEngine;
using System;
using UnityEngine.Events;
using UnityEngine.UI;

namespace UnityEngine.UI.Extensions
{
	public class ReorderableList : MonoBehaviour
	{
		[Serializable]
		public struct ReorderableListEventStruct
		{
			public GameObject DroppedObject;
			public int FromIndex;
			public ReorderableList FromList;
			public bool IsAClone;
			public GameObject SourceObject;
			public int ToIndex;
			public ReorderableList ToList;
		}

		[Serializable]
		public class ReorderableListHandler : UnityEvent<ReorderableList.ReorderableListEventStruct>
		{
		}

		public LayoutGroup ContentLayout;
		public RectTransform DraggableArea;
		public bool IsDraggable;
		public bool CloneDraggedObject;
		public bool IsDropable;
		public ReorderableListHandler OnElementDropped;
		public ReorderableListHandler OnElementGrabbed;
		public ReorderableListHandler OnElementRemoved;
	}
}
