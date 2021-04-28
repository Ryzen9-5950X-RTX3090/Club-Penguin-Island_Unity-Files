using UnityEngine;

namespace ClubPenguin
{
	public class LavaVentController : ProximityBroadcaster
	{
		public float idleDuration;
		public float rampUpDuration;
		public float eruptDuration;
		public ParticleSystem idleParticles;
		public Collider repulseCollider;
	}
}
