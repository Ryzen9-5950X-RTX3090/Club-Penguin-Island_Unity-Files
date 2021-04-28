using UnityEngine;

namespace ClubPenguin.Actions
{
	public class SetRotationAction : Action
	{
		public Transform TargetRotation;
		public bool Loop;
		public bool SetHeadingOnExit;
		public bool BroadcastOnExit;
	}
}
