using UnityEngine;
using ClubPenguin.Core;

namespace ClubPenguin.Cinematography
{
	public class RailDolly : MonoBehaviour
	{
		public SmoothBezierCurve Rail;
		public float DelayBeforeStartingMotion;
		public float DelayAfterFinishingMotion;
		public float Duration;
		public AnimationCurve MotionCurve;
	}
}
