using UnityEngine;
using UnityEngine.Events;

namespace Disney.Native
{
	public class AccessibilitySettings : MonoBehaviour
	{
		public bool VisibleOnlyForSwitchControl;
		public bool Priority;
		public bool IgnoreText;
		public bool VoiceOnly;
		public string CustomToken;
		public GameObject ReferenceToken;
		public RectTransform ReferenceRect;
		public bool DontRender;
		public GameObject[] AdditionalReferenceTokens;
		public UnityEvent CustomOnClickEvent;
		public string DynamicText;
	}
}
