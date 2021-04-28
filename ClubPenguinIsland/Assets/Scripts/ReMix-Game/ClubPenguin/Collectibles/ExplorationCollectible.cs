using UnityEngine;

namespace ClubPenguin.Collectibles
{
	public class ExplorationCollectible : Collectible
	{
		public GameObject ParticlesAppear;
		public GameObject ParticlesPickup;
		public Transform ViewTransform;
		public Vector3 targetOffset;
		public float PickupRadius;
		public bool WillAttractToPlayer;
		public bool IsVisible;
	}
}
