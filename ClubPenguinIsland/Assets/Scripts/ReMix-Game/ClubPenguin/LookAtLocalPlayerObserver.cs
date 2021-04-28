using UnityEngine;

namespace ClubPenguin
{
	public class LookAtLocalPlayerObserver : MonoBehaviour
	{
		public Transform TargetLookingAtPlayer;
		public GameObject ObjectToEnableWhenInRange;
		public float MinDistance;
		public bool UseMinDistance;
		public float MaxAngleDegrees;
		public bool LockXRotation;
		public bool LockYRotation;
		public bool LockZRotation;
		public float TweenTime;
		public float MinDeltaAngleToTween;
		public iTween.EaseType EaseType;
	}
}
