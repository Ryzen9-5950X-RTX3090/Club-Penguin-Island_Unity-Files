using UnityEngine;
using ClubPenguin.UI;
using UnityEngine.UI;

namespace ClubPenguin
{
	public class UpdateProfilePopupContentController : MonoBehaviour
	{
		public enum FormType
		{
			MissingInfo = 0,
			LegalUpdate = 1,
		}

		public InputFieldValidator ParentEmailInputField;
		public InputFieldValidator FirstNameInputField;
		public LegalCheckboxesValidator LegalPanel;
		public Button UpdateButton;
		public Text UpdateButtonText;
		public GameObject PreloaderImage;
		public Text TitleText;
		public Text InstructionText;
		public FormType WhichFields;
	}
}
