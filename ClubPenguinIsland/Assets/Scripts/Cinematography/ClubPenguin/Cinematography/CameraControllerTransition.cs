using UnityEngine;

namespace ClubPenguin.Cinematography
{
	public class CameraControllerTransition : MonoBehaviour
	{
		public enum CameraTransitionType
		{
			NONE = 0,
			CUT = 1,
			MAX_SPEED = 2,
			CURVE = 3,
		}

		public bool DefaultTransitionIn;
		public bool DefaultTransitionOut;
		public int DefaultTransitionInPriority;
		public int DefaultTransitionOutPriority;
		public CameraController OtherController;
		public CameraTransitionType TransitionType;
		public float MaxMoveSpeed;
		public float MaxAimSpeed;
		public bool LimitMoveSpeed;
		public bool LimitAimSpeed;
		public AnimationCurve Curve;
		public float Duration;
		public bool DampenMovingTarget;
		public bool DoubleDampenMovingTargetAim;
	}
}
