using Disney.LaunchPadFramework;
using UnityEngine;

namespace ClubPenguin.Actions
{
	public class SpawnObjectAction : Action
	{
		public GameObjectPool ObjectPool;
		public GameObject ObjectPrefab;
		public Transform SpawnTransform;
		public bool SpawnAtOwnerTransform;
		public bool ParentToOwner;
		public bool TransferOwnerMomentum;
		public Vector3 ImpulseDirection;
		public float DirNoise;
		public float ImpulseMagnitude;
		public float MagNoise;
	}
}
