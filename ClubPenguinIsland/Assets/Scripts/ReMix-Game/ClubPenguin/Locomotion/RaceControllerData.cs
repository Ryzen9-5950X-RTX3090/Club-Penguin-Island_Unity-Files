using UnityEngine;
using ClubPenguin;

namespace ClubPenguin.Locomotion
{
	public class RaceControllerData : SlideControllerData
	{
		public GameObject SpeedLinesTubeRacePrefab;
		public float ConstantForwardThrustThreshold;
		public float ConstantForwardThrust;
		public float LateralThrustScale;
		public float LaunchImpulse;
		public int CountdownMS;
		public float Bounciness;
		public PhysicMaterialCombine BounceCombine;
		public RaceTrackProperties.Properties RaceTrackProperties;
		public bool VisualizeTrackSegment;
	}
}
