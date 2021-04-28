using UnityEngine;

namespace ClubPenguin.Cinematography.Cameras
{
	public class ChaseCamera : MonoBehaviour
	{
		public float BoomDist;
		public float BoomHeight;
		public float SideBoomDistMult;
		public float LookatSmoothing;
		public float VerticalOffsetAngle;
		public float CatchupBoomDistCountForDouble;
		public float Mass;
		public float Deceleration;
		public float MaxSpeed;
		public float MaxForce;
		public bool Collision;
		public float CollisionRadius;
		public float WallForceMult;
		public bool Banking;
		public float BankWeight;
		public float BankSmoothing;
		public float MinBankHeadingErrorDot;
		public bool TrackGuides;
		public AnimationCurve TrackDirBlendCurve;
		public float TrackDirBlendDuration;
		public float TargetDirectionContribution;
		public float TrackDirectionContribution;
		public AnimationCurve BlendCurve;
		public float BlendInDuration;
		public float BlendOutDuration;
	}
}
