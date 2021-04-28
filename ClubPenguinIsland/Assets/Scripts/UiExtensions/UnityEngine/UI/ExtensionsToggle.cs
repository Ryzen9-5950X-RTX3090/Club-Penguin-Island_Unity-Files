using System;
using UnityEngine.Events;
using UnityEngine;

namespace UnityEngine.UI
{
	public class ExtensionsToggle : Selectable
	{
		[Serializable]
		public class ToggleEvent : UnityEvent<bool>
		{
		}

		[Serializable]
		public class ToggleEventObject : UnityEvent<ExtensionsToggle>
		{
		}

		public enum ToggleTransition
		{
			None = 0,
			Fade = 1,
		}

		public string UniqueID;
		public ToggleTransition toggleTransition;
		public Graphic graphic;
		[SerializeField]
		private ExtensionsToggleGroup m_Group;
		public ToggleEvent onValueChanged;
		public ToggleEventObject onToggleChanged;
		[SerializeField]
		private bool m_IsOn;
	}
}
