using UnityEngine;

namespace ClubPenguin.Actions
{
	public class IfWithinDistanceToTargetAction : Action
	{
		public Transform TargetObject;
		public float Distance;
		public bool FacingTargetObject;
		public float FacingTargetThreshold;
	}
}
