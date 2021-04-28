using Disney.Kelowna.Common.Tests;
using ClubPenguin.UI;
using UnityEngine;

namespace ClubPenguin.Tests
{
	public class CreateFormValidatorTests : BaseLoginCreateIntegrationTest
	{
		public InputFieldValidator UsernameTestInputField;
		public GameObject UsernameErrorObject;
		public InputFieldValidator PasswordTestInputField;
		public GameObject PasswordErrorObject;
		public InputFieldValidator ParentEmailTestInputField;
		public GameObject ParentEmailErrorObject;
		public InputFieldValidator FirstNameTestInputField;
		public GameObject FirstNameErrorObject;
	}
}
