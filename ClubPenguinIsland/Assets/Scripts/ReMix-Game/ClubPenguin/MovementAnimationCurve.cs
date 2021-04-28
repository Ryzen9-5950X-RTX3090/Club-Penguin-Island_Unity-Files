using UnityEngine;

namespace ClubPenguin
{
	public class MovementAnimationCurve : ProximityBroadcaster
	{
		public AnimationCurve animCurveX;
		public float magnitudeX;
		public bool animReverseX;
		public AnimationCurve animCurveY;
		public float magnitudeY;
		public bool animReverseY;
		public float animSecondsPerCycle;
		public float startPosition;
		public GameObject RelativeToObject;
		public bool IsActive;
	}
}
