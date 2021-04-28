using UnityEngine;

namespace ClubPenguin.ObjectManipulation.Input
{
	public class ObjectManipulationInputController : MonoBehaviour
	{
		public LayerMask TargetLayerMask;
		public float MinTimeToMoveInput;
		public bool NaturalDragFromTouchPosition;
		public bool SkipOneFrame;
	}
}
