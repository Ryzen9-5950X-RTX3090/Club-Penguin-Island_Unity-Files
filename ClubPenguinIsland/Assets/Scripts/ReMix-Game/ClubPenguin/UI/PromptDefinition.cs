using System;
using ClubPenguin.Core.StaticGameData;
using Disney.Kelowna.Common;

namespace ClubPenguin.UI
{
	[Serializable]
	public class PromptDefinition : StaticGameDataDefinition
	{
		public string Id;
		public PrefabContentKey PrefabContentKey;
		public string i18nTitleText;
		public string i18nBodyText;
		public DPrompt.ButtonFlags[] Buttons;
		public CustomButtonKey[] CustomButtonKeys;
		public SpriteContentKey SpriteContentKey;
		public bool IsModal;
		public bool AutoClose;
		public bool UseCloseButton;
	}
}
