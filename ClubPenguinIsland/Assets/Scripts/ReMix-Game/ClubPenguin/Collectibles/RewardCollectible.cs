using UnityEngine;

namespace ClubPenguin.Collectibles
{
	public class RewardCollectible : Collectible
	{
		public GameObject ParticlesAppear;
		public GameObject ParticlesPickup;
		public GameObject ParticlesReward;
		public float ParticlesWaitTime;
		public Vector3 ParticlesOffset;
		public Color ParticleSpawnPointColor;
		public GameObject InteractionObj;
		public string NameIsCollected;
	}
}
