using UnityEngine;

namespace ClubPenguin.Input
{
	public class HorizontalArrowsInputHandler : InputMapHandler<HorizontalArrowsInputMap.Result>
	{
		[SerializeField]
		private InputMappedButton left;
		[SerializeField]
		private InputMappedButton right;
	}
}
