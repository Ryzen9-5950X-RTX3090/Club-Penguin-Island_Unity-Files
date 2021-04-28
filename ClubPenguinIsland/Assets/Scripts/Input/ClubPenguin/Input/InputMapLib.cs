using UnityEngine;
using System.Collections.Generic;

namespace ClubPenguin.Input
{
	public class InputMapLib : ScriptableObject
	{
		[SerializeField]
		protected bool blockInput;
		[SerializeField]
		protected bool autoEnabled;
		[SerializeField]
		private List<InputMapLib> enabledDependencies;
	}
}
