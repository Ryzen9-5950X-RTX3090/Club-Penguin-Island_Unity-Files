using UnityEngine;

namespace ClubPenguin.Input
{
	public class AnyKeyInputHandler : InputMapHandler<AnyKeyInputMap.Result>
	{
		[SerializeField]
		private InputMappedButton button;
	}
}
