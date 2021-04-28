using UnityEngine;

namespace ClubPenguin.UI
{
	public class SettingsPanelAccessibility : MonoBehaviour
	{
		public enum SCALE_TYPE
		{
			SMALL = 0,
			MEDIUM = 1,
			LARGE = 2,
		}

		public SCALE_TYPE ToggleScaleType;
	}
}
