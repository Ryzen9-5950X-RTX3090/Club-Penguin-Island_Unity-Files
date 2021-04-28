using UnityEngine;
using UnityEngine.UI;

namespace ClubPenguin.UI
{
	public class CustomGraphicsController : MonoBehaviour
	{
		[SerializeField]
		private Toggle antiAliasingToggle;
		[SerializeField]
		private Toggle cameraPostToggle;
		[SerializeField]
		private Toggle graphicsQualityToggleHigh;
		[SerializeField]
		private Toggle graphicsQualityToggleMedium;
		[SerializeField]
		private Toggle graphicsQualityToggleLow;
		[SerializeField]
		private Toggle lodPenguinQualityToggleHigh;
		[SerializeField]
		private Toggle lodPenguinQualityToggleMedium;
		[SerializeField]
		private Toggle lodPenguinQualityToggleLow;
		[SerializeField]
		private Dropdown displayModeMenu;
		[SerializeField]
		private Dropdown aspectRatioMenu;
		[SerializeField]
		private Dropdown resolutionsMenu;
		[SerializeField]
		private Text antiAliasOnText;
		[SerializeField]
		private Text cameraPostOnText;
	}
}
