using UnityEngine;
using UnityEngine.UI;

namespace ClubPenguin.UI
{
	public class UIElementDisabler : MonoBehaviour
	{
		public string UIElementID;
		public GameObject Breadcrumb;
		public Image Image;
		public Sprite DisabledSprite;
		public Color DisabledColor;
		public bool GiveUniqueID;
		public string AccessibilityEnabledToken;
		public string AccessibilityDisabledToken;
	}
}
