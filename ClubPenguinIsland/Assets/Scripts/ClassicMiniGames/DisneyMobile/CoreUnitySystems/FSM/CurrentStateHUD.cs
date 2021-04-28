using UnityEngine;

namespace DisneyMobile.CoreUnitySystems.FSM
{
	public class CurrentStateHUD : MonoBehaviour
	{
		public StateTraverser stateTraverser;
		public Rect startRect;
		public bool allowDrag;
		public bool forceToLowerLeft;
		public float offsetFromBottomWhenForcedToLowerLeft;
		public Color mColor;
	}
}
