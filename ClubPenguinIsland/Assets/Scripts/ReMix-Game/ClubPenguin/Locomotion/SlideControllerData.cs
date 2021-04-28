using System;
using UnityEngine;
using ClubPenguin;
using ClubPenguin.Locomotion.Primitives;

namespace ClubPenguin.Locomotion
{
	public class SlideControllerData : LocomotionControllerData
	{
		[Serializable]
		public class FabricAudio
		{
			public SurfaceEffectsData SurfaceSamplingData;
			public string VelocityMagEventName;
			public string VelocityMagRTP;
			public string YVelocityEventName;
			public string YVelocityRTP;
			public string SupportedEventName;
			public string AirborneEventName;
			public string LandedEventName;
		}

		public GameObject PilotPrefab;
		public GameObject SledPrefab;
		public ParticleSystem ParticlesPrefab;
		public float BuildMomentumTime;
		public float MinHeightForTrick;
		public float TurnSmoothing;
		public float SpinScale;
		public float SpinScaleOnWater;
		public float MaxSpinRate;
		public float MaxSpinRateOnWater;
		public float SurfaceSmoothing;
		public float SpringAccel;
		public float StartingSpringAccel;
		public float ImpulseScale;
		public float MaxManualSpeedBeforeMomentumTakeover;
		public float HopSpeed;
		public float JumpSpeed;
		public float EjectHopSpeed;
		public float EjectDamper;
		public float GroundedDistance;
		public float RotationSmoothing;
		public Vector3 SledOffsetFromPilot;
		public float MinMagnitudeForBump;
		public float IdleLoopTransitionSmoothing;
		public AnimationCurve WaveCurve;
		public float ImpulseScaleOnWater;
		public ParticleSystem WaterRipples;
		public GameObject WaterSplash;
		public float SplashCooldown;
		public float SplashOffset;
		public float WaterRippleOffset;
		public float WaterRippleSmoothing;
		public string ChestBoneName;
		public Vector3 ChestBoneRotation;
		public WaterProperties.Properties WaterProperties;
		public float MinSpeedForSlowLoopAnim;
		public float MinSpeedForFastLoopAnim;
		public ForceAccumulatorPrimitiveData ImpulseProperties;
		public FabricAudio Audio;
	}
}
