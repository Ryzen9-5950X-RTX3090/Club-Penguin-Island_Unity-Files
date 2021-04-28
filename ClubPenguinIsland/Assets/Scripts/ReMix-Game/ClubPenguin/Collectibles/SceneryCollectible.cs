using UnityEngine;

namespace ClubPenguin.Collectibles
{
	public class SceneryCollectible : Collectible
	{
		public GameObject ParticlesAppear;
		public GameObject ParticlesPickup;
		public GameObject ParticlesPickupAnchor;
		public float AttractForce;
		public float PickupRadius;
		public GameObject InteractionObj;
		public bool AutomaticPickup;
		public bool IsDivingCollectible;
		public Vector3 TargetOffset;
		public Vector2 RangeX;
		public Vector2 RangeY;
		public Vector2 RangeZ;
		public GameObject[] ObjectsToHide;
		public bool IsVisible;
		public Transform originalParent;
	}
}
