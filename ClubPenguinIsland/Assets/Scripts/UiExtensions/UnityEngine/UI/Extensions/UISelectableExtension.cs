using UnityEngine;
using System;
using UnityEngine.Events;
using UnityEngine.EventSystems;

namespace UnityEngine.UI.Extensions
{
	public class UISelectableExtension : MonoBehaviour
	{
		[Serializable]
		public class UIButtonEvent : UnityEvent<PointerEventData.InputButton>
		{
		}

		public UIButtonEvent OnButtonPress;
		public UIButtonEvent OnButtonRelease;
		public UIButtonEvent OnButtonHeld;
	}
}
