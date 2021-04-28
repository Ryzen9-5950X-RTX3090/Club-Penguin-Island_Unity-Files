using UnityEngine;

namespace ClubPenguin.Input
{
	public class LocomotionOverrideInput : LocomotionInput
	{
		[SerializeField]
		private Vector2 OverrideDirection;
		[SerializeField]
		private bool DirectionOverriden;
	}
}
