using System.Collections.Generic;
using UnityEngine;

namespace ClubPenguin.Actions
{
	public class ToggleVisibilityAction : Action
	{
		public List<GameObject> Objects;
		public bool Toggle;
		public bool On;
		public bool IncludeChildren;
		public float Delay;
	}
}
