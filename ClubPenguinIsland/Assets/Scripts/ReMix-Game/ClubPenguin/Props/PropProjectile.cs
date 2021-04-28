using UnityEngine;

namespace ClubPenguin.Props
{
	public class PropProjectile : MonoBehaviour
	{
		public enum ProjectileMode
		{
			Calculated = 0,
			Physics = 1,
			Animated = 2,
		}

		public ProjectileMode Mode;
		public float ArcDelta;
		public float TravelTimeSec;
		public Vector3 WorldStart;
		public Vector3 WorldDestination;
		public float DestroyDelaySec;
		public float HorizontalTorque;
		public float VerticalTorque;
		public Vector3 Force;
		public bool RevealSpawned;
		public PropExperience SpawnedPropExperience;
	}
}
