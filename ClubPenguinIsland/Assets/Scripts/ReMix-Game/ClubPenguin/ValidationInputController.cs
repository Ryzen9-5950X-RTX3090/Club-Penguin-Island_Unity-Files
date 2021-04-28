using UnityEngine;

namespace ClubPenguin
{
	public class ValidationInputController : MonoBehaviour
	{
		public Sprite ErrorInput;
		public Sprite ValidInput;
		public Sprite DefaultInput;
		public bool ShowValidationStyles;
		public string ErrorInputSfx;
		public string ValidInputSfx;
		public GameObject ErrorBox;
		public TextWithEvents errorText;
		public bool hasDescription;
		public GameObject DescriptionBox;
	}
}
