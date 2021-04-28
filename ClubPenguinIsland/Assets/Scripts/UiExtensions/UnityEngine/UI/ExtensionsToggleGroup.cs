using UnityEngine.EventSystems;
using System;
using UnityEngine.Events;
using UnityEngine;

namespace UnityEngine.UI
{
	public class ExtensionsToggleGroup : UIBehaviour
	{
		[Serializable]
		public class ToggleGroupEvent : UnityEvent<bool>
		{
		}

		[SerializeField]
		private bool m_AllowSwitchOff;
		public ToggleGroupEvent onToggleGroupChanged;
		public ToggleGroupEvent onToggleGroupToggleChanged;
	}
}
