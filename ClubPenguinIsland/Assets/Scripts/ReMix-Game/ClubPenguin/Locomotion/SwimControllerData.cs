using System;
using UnityEngine;
using ClubPenguin.Locomotion.Primitives;

namespace ClubPenguin.Locomotion
{
	public class SwimControllerData : LocomotionControllerData
	{
		[Serializable]
		public struct LowAirThreshold
		{
			public float AirSupplyThreshold;
			public float AnimDuration;
		}

		public enum FreezeAxisType
		{
			None = -1,
			X = 0,
			Y = 1,
			Z = 2,
		}

		public ParticleSystem Ripples;
		public float RippleHeightOffset;
		public float SplashHeightOffset;
		public GameObject Splash;
		public float MaxDistToConsiderNearSurface;
		public float MaxDistToConsiderOnSurface;
		public float HitReactRotationSmoothing;
		public FreezeAxisType FreezeAxis;
		public float FreezeDist;
		public float SurfaceConstraintSmoothing;
		public float SurfaceSontraintSnapThreshold;
		public float MaxShallowWaterDepth;
		public float ShallowWaterDepthHysteresis;
		public float ShallowWaterSwimSpeedMultiplier;
		public Transform ResurfaceTransform;
		public Transform QuickResurfacingTransform;
		public LowAirThreshold[] LowAirThresholds;
		public float LowAirAnimSmoothing;
		public SwimPrimitiveData SwimProperties;
		public ForceAccumulatorPrimitiveData ImpulseProperties;
		public float SwimWithPropIKSmoothing;
		public string CollisionAudioEvent;
		public string AirRechargeAudioEvent;
		public string AirWarningAudioEvent;
		public string AirCriticalAudioEvent;
	}
}
