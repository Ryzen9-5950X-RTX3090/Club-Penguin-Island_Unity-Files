using UnityEngine;

namespace ClubPenguin.Actions
{
	public class ToggleObjectAction : Action
	{
		public GameObject TheObject;
		public bool Toggle;
		public bool On;
		public bool ToggleOnInterrupt;
		public bool ForLocalPlayerOnly;
	}
}
