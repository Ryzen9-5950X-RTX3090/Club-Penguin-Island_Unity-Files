using System.Collections.Generic;
using UnityEngine;

namespace Disney.Native
{
	public class NativeAccessibilityManager : MonoSingleton<NativeAccessibilityManager>
	{
		public List<GameObject> ScrollContentComponents;
		public List<AccessibilitySettings> HiddenScrollItemIds;
	}
}
