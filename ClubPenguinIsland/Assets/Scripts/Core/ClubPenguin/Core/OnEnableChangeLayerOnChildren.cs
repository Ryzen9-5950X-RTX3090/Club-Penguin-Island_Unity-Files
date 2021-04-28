using UnityEngine;

namespace ClubPenguin.Core
{
	public class OnEnableChangeLayerOnChildren : MonoBehaviour
	{
		public LayerMask LayerMaskToSwitchTo;
		public LayerMask LayerMaskToFind;
		public GameObject ParentContainer;
	}
}
