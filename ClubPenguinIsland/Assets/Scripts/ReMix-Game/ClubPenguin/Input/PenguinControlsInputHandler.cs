using UnityEngine;

namespace ClubPenguin.Input
{
	public class PenguinControlsInputHandler : PenguinControlsInputHandlerLib<PenguinControlsInputMap.Result>
	{
		[SerializeField]
		private InputMappedButton btnJump;
		[SerializeField]
		private InputMappedButton btnAction1;
		[SerializeField]
		private InputMappedButton btnAction2;
		[SerializeField]
		private InputMappedButton btnAction3;
		[SerializeField]
		private InputMappedButton btnCancel;
	}
}
