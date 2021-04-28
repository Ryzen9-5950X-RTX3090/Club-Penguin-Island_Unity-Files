using System;
using UnityEngine;

namespace ClubPenguin.UI
{
	public struct DPrompt
	{
		public enum ButtonFlags
		{
			None = 0,
			CANCEL = 1,
			OK = 2,
			NO = 4,
			YES = 8,
			CLOSE = 16,
			RETRY = 32,
		}

		public DPrompt(string titleText, string bodyText, DPrompt.ButtonFlags buttons, Sprite image, bool isModal, bool autoClose, bool isTranslated, bool useCloseButton) : this()
		{
		}

		public PromptController.CustomButtonDefinition[] CustomButtons;
	}
}
