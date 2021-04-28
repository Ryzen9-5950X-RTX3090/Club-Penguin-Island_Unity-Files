using UnityEngine;

namespace ClubPenguin.Input
{
	public class NavBarButtonsInputHandler : InputMapHandler<NavBarButtonsInputMap.Result>
	{
		[SerializeField]
		private InputMappedButton btnProfile;
		[SerializeField]
		private InputMappedButton btnConsumables;
		[SerializeField]
		private InputMappedButton btnQuest;
		[SerializeField]
		private InputMappedButton btnMap;
	}
}
