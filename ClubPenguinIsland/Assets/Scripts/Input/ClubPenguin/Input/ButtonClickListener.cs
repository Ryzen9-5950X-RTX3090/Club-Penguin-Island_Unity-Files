using UnityEngine;
using System;
using UnityEngine.Events;

namespace ClubPenguin.Input
{
	public class ButtonClickListener : MonoBehaviour
	{
		[Serializable]
		public class ButtonClickListenerEvent : UnityEvent<ButtonClickListener.ClickType>
		{
		}

		public enum ClickType
		{
			UI = 0,
			InputMap = 1,
		}

		[SerializeField]
		private ButtonClickListenerEvent onClick;
	}
}
