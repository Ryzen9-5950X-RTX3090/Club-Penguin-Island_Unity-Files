using UnityEngine;

namespace ClubPenguin.Input
{
	public class NavBarTitleInputHandler : InputMapHandler<NavBarTitleInputMap.Result>
	{
		[SerializeField]
		private InputMappedButton back;
		[SerializeField]
		private InputMappedButton exit;
		[SerializeField]
		private string target;
		[SerializeField]
		private string targetEvent;
	}
}
