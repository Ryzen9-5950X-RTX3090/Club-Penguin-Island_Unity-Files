using UnityEngine;
using System;
using UnityEngine.Events;

namespace ClubPenguin.UI
{
	public class InputFieldFormSubmitButton : MonoBehaviour
	{
		[Serializable]
		public class FormValidatedEvent : UnityEvent
		{
		}

		[SerializeField]
		private FormValidatedEvent onValidated;
		public InputFieldForm InputForm;
		[SerializeField]
		private bool hideSubmitButton;
	}
}
