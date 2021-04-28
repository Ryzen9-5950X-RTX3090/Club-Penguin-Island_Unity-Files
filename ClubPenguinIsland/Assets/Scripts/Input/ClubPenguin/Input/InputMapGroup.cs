using System.Collections.Generic;
using UnityEngine;

namespace ClubPenguin.Input
{
	public class InputMapGroup : InputMapLib
	{
		[SerializeField]
		private List<InputMapLib> maps;
	}
}
