using UnityEngine;

namespace ClubPenguin.Input
{
	public class NavBarSecondaryInputHandler : InputMapHandler<NavBarSecondaryInputMap.Result>
	{
		[SerializeField]
		private string target;
		[SerializeField]
		private string targetEvent;
	}
}
