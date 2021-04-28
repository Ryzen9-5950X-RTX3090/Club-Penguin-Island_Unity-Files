using UnityEngine;

namespace ClubPenguin.MiniGames.Fishing
{
	public class FishingFish : MonoBehaviour
	{
		public enum Rarities
		{
			Common = 0,
			Rare = 1,
			Legendary = 2,
		}

		public Transform cachedTransform;
		public Transform scaleHandle;
		public Collider fishCollider;
		public Animator animator;
		public ParticleSystem fxTrail;
	}
}
