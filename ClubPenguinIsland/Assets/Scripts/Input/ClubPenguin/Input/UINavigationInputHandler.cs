using UnityEngine.UI;
using UnityEngine;

namespace ClubPenguin.Input
{
	public class UINavigationInputHandler : InputMapHandler<UINavigationInputMap.Result>
	{
		[SerializeField]
		private Selectable initialSelectable;
	}
}
