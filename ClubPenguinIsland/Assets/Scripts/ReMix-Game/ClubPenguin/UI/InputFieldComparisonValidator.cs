namespace ClubPenguin.UI
{
	public class InputFieldComparisonValidator : InputFieldValidator
	{
		public InputFieldValidator[] InputFieldsToCompare;
		public bool ExactMatch;
		public bool ReverseCompare;
		public bool ClearOnOtherFieldsError;
		public string i18nErrorMessage;
	}
}
