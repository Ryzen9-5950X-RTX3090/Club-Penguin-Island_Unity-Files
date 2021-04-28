using Disney.Kelowna.Common;
using System;

namespace ClubPenguin.UI
{
	public class ShowPromptAction : ScriptableAction
	{
		[Serializable]
		public struct Option
		{
			public DPrompt.ButtonFlags Button;
			public ScriptableAction NextStep;
		}

		public string i18nTitleText;
		public string i18nBodyText;
		public Option[] Options;
	}
}
