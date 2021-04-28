using UnityEngine;
using System;
using ClubPenguin.UI;
using UnityEngine.UI;

namespace ClubPenguin
{
	public class CreatePopupContentController : MonoBehaviour
	{
		[Serializable]
		protected struct InputFields
		{
			public InputFieldValidator[] Validators;
		}

		[SerializeField]
		protected InputFields[] shardInputFields;
		[SerializeField]
		protected InputFieldValidator usernameInputField;
		[SerializeField]
		protected InputFieldValidator passwordInputField;
		[SerializeField]
		protected InputFieldValidator passwordConfirmInputField;
		[SerializeField]
		protected InputFieldValidator parentEmailInputField;
		[SerializeField]
		protected InputFieldValidator firstNameInputField;
		[SerializeField]
		protected LegalCheckboxesValidator legalCheckBoxes;
		[SerializeField]
		private Button createButton;
	}
}
