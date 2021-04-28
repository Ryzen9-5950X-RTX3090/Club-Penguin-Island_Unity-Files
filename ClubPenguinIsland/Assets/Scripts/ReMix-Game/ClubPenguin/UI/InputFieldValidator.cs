using Disney.Kelowna.Common;
using UnityEngine.Events;

namespace ClubPenguin.UI
{
	public class InputFieldValidator : ScriptableActionPlayer
	{
		public InputFieldValidatonAction[] ValidationActions;
		public InputFieldEx TextInput;
		public string GameActionContext;
		public bool IsValidationComplete;
		public bool IsValidationInProgress;
		public bool HasError;
		public ValidationEvent OnValidationError;
		public UnityEvent OnValidationSuccess;
	}
}
