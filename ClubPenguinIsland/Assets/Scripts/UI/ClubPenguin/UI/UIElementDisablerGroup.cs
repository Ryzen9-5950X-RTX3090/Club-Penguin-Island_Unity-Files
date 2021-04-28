using UnityEngine;

namespace ClubPenguin.UI
{
	public class UIElementDisablerGroup : MonoBehaviour
	{
		public string UIElementGroupID;
		public bool IncludeAllChildren;
		public UIElementDisabler[] ElementsInGroup;
	}
}
