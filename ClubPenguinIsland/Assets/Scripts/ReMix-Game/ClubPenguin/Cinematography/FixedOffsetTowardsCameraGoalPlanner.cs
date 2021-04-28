using UnityEngine;

namespace ClubPenguin.Cinematography
{
	public class FixedOffsetTowardsCameraGoalPlanner : GoalPlanner
	{
		public float DistanceOnIdle;
		public float HeightOffset;
		public bool AlwaysUseDistOnIdle;
		public AnimationCurve Curve;
		public float Duration;
		public AnimationCurve DistanceCurve;
		public float DistanceDuration;
	}
}
