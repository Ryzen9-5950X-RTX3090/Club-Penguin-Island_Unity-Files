using UnityEngine;

namespace ClubPenguin.Input
{
	public class PromptControllerInputHandler : InputMapHandler<PromptControllerInputMap.Result>
	{
		[SerializeField]
		private InputMappedButton btnAccept;
		[SerializeField]
		private InputMappedButton btnCancel;
	}
}
