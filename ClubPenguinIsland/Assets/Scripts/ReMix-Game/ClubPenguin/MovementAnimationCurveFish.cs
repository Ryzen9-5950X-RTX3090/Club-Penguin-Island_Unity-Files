using UnityEngine;

namespace ClubPenguin
{
	public class MovementAnimationCurveFish : MonoBehaviour
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
		public Vector3 FacingLeftAngle;
		public Vector3 FacingRightAngle;
	}
}
