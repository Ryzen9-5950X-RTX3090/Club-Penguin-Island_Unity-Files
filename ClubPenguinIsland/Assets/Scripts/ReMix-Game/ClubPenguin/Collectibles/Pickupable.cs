using UnityEngine;

namespace ClubPenguin.Collectibles
{
	public class Pickupable : Collectible
	{
		public ParticleSystem PickupParticles;
		public Vector3 ParticleRotation;
		public bool DestroyPickupObject;
		public string SendQuestEvent;
	}
}
