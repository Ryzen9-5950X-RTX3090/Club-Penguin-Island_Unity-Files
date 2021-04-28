using UnityEngine;

namespace ClubPenguin.UI
{
	public class InputButtonDefinition : ScriptableObject
	{
		public GameObject ButtonPrefab;
		public bool IsBackgroundVisible;
		public TrayInputButton.ButtonState DefaultState;
		public Sprite[] ButtonIcons;
		public Color[] IconTints;
	}
}
