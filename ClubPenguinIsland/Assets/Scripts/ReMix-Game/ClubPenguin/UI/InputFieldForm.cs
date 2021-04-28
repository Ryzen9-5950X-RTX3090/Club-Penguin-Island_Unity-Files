using UnityEngine;

namespace ClubPenguin.UI
{
	public class InputFieldForm : MonoBehaviour
	{
		[SerializeField]
		private InputFieldValidator[] validators;
		[SerializeField]
		private InputFieldValidator autoSelectedValidator;
		[SerializeField]
		private InputFieldFormSubmitButton submitButton;
	}
}
