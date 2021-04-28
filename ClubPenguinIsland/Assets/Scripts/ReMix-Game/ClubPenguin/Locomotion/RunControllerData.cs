using System;
using UnityEngine;

namespace ClubPenguin.Locomotion
{
	public class RunControllerData : LocomotionControllerData
	{
		[Serializable]
		public class IdleLocoParams
		{
			public float TurnSmoothing;
			public float MaxTurnDegreesPerSec;
			public int RotationDegreesOffsetThreshold;
		}

		[Serializable]
		public class LocoParams
		{
			public float IntoSpeedMult;
			public float TurnSpeedMult;
			public float TurnSmoothing;
			public float MaxTurnDegreesPerSec;
			public float Acceleration;
			public float Speed;
			public float speedMult;
		}

		[Serializable]
		public class WalkLocoParams : LocoParams
		{
			public float ElapsedWalkTime;
		}

		[Serializable]
		public class JogLocoParams : LocoParams
		{
			public float ElapsedJogTime;
			public float MinTimeToStartJogging;
			public float MinSteerMag;
		}

		[Serializable]
		public class SprintLocoParams : LocoParams
		{
			public float MinTimeToStartSprinting;
			public AnimationCurve LeanCurve;
			public float LeanDuration;
			public float ElapsedLeanTime;
		}

		[Serializable]
		public class InAirLocoParams : LocoParams
		{
			public float LandingGroundCheckDistance;
			public float StartFreefallGroundCheckDistance;
			public float MinVelocityYToStartFreefall;
			public float LandingTriggerDistance;
		}

		public float JumpSpeed;
		public float Gravity;
		public float Deceleration;
		public float MinFacingAngleToResetMomentum;
		public float MinFacingAngleToPivot;
		public float GroundFriction;
		public float StopAnimVelMultiplier;
		public IdleLocoParams IdleParams;
		public WalkLocoParams WalkParams;
		public JogLocoParams JogParams;
		public SprintLocoParams SprintParams;
		public InAirLocoParams InAirParams;
	}
}
