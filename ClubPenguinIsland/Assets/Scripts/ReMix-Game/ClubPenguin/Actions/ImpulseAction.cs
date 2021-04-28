using UnityEngine;

namespace ClubPenguin.Actions
{
	public class ImpulseAction : Action
	{
		public Transform StartTransform;
		public Transform DirectionY;
		public Transform DirectionZ;
		public Transform DirectionTo;
		public Vector3 Direction;
		public float Magnitude;
		public Vector3 AddDirection;
		public float AddMagnitude;
		public bool SetRunLocomotion;
		public bool PreserveTubing;
	}
}
