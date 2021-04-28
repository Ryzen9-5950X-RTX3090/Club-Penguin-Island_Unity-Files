using UnityEngine;

namespace ClubPenguin.UI
{
	public class InputButtonGroupDefinition : ScriptableObject
	{
		public TrayInputButtonGroupContentKey TemplateContentKey;
		public InputButtonDefinition[] InputButtonDefinitions;
		public TrayInputButton.ButtonState[] ButtonStateOverrides;
	}
}
