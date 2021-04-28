using UnityEngine;
using UnityEngine.UI;

namespace ClubPenguin.Gui
{
	public class TintToggleGroupButton : MonoBehaviour
	{
		public Color OnTint;
		public Color OffTint;
		public Image image;
		public Button button;
		[SerializeField]
		private bool affectText;
		[SerializeField]
		private Text text;
		[SerializeField]
		private Color textOnTint;
		[SerializeField]
		private Color textOffTint;
	}
}
