using UnityEngine;

namespace ClubPenguin.Actions
{
	public class FollowAction : Action
	{
		public Transform PilotTransform;
		public bool SetPosition;
		public bool SetRotation;
		public bool UseVelAsFacing;
		public bool IgnoreVelY;
	}
}
