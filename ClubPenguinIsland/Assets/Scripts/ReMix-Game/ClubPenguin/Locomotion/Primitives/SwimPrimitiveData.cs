using UnityEngine;

namespace ClubPenguin.Locomotion.Primitives
{
	public class SwimPrimitiveData : ScriptableObject
	{
		public ParticleSystem BreathBubbles;
		public ParticleSystem SwimBubbles;
		public ParticleSystem TorpedoBubbles;
		public float MinDistFromSurfaceForBubbles;
		public float Accel;
		public float MinSpeedMult;
		public float RotationSmoothing;
		public float DragSmoothing;
		public float SpinSmoothing;
		public int RotationDegreesOffsetThreshold;
	}
}
