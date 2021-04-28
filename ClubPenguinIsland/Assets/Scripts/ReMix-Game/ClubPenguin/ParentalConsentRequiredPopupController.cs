using UnityEngine;
using UnityEngine.UI;
using ClubPenguin.UI;

namespace ClubPenguin
{
	public class ParentalConsentRequiredPopupController : MonoBehaviour
	{
		public GameObject NoticeContainer;
		public GameObject ResendContainer;
		public GameObject SentContainer;
		public Text SentText;
		public Button ResendButton;
		public Text ResendButtonText;
		public GameObject ResendButtonPreloader;
		public InputFieldValidator ParentEmailInputField;
		public Text[] ParentEmailTextObjects;
	}
}
