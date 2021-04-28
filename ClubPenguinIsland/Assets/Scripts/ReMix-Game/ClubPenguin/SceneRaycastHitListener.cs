using UnityEngine;

namespace ClubPenguin
{
	public class SceneRaycastHitListener : MonoBehaviour
	{
		public bool DispatchBeganIfFirst;
		public bool DispatchEndedIfFirst;
		public bool DispatchMovedIfFirst;
		public bool DispatchStationaryIfFirst;
		public bool BlockDispatchIfUiHit;
		public bool IsTouchDown;
	}
}
