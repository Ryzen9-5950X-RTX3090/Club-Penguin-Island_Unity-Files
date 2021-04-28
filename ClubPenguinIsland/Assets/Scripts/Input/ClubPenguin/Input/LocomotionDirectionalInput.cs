using UnityEngine;

namespace ClubPenguin.Input
{
	public class LocomotionDirectionalInput : LocomotionInput
	{
		[SerializeField]
		private KeyCodeInput left;
		[SerializeField]
		private KeyCodeInput right;
		[SerializeField]
		private KeyCodeInput up;
		[SerializeField]
		private KeyCodeInput down;
	}
}
