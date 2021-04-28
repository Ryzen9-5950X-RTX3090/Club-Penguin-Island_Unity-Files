using UnityEngine;
using System;
using UnityEngine.UI;

namespace ClubPenguin.UI
{
	public class PromptController : MonoBehaviour
	{
		[Serializable]
		public struct TextDefinition
		{
			public Text Text;
			public string Key;
		}

		[Serializable]
		public struct ImageDefinition
		{
			public Image Image;
			public string Key;
		}

		[Serializable]
		public struct ButtonDefinition
		{
			public GameObject Prefab;
			public string i18nText;
		}

		[Serializable]
		public struct CustomButtonDefinition
		{
			public PromptController.ButtonDefinition ButtonDefinition;
			public DPrompt.ButtonFlags ButtonFlags;
		}

		public ButtonDefinition[] Buttons;
		public Transform ButtonParent;
		public GameObject CloseButton;
		public TextDefinition[] TextFields;
		public ImageDefinition[] Images;
	}
}
