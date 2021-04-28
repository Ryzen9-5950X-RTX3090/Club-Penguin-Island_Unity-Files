using ClubPenguin;
using UnityEngine;

namespace ClubPenguin.Collectibles
{
	public class CollectibleOptimizer : ProximityBroadcaster
	{
		public MonoBehaviour[] scriptObjects;
		public ParticleSystem[] particleSystems;
		public Animator[] animators;
	}
}
