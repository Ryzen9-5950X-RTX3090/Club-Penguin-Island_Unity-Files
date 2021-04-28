using System;
using Disney.Kelowna.Common;
using UnityEngine;

namespace ClubPenguin.SpecialEvents
{
	[Serializable]
	public class ScheduledSpawnData
	{
		public PrefabContentKey SpawnPrefabKey;
		public Transform SpawnParentTransform;
		public Vector3 SpawnOffset;
		public Vector3 SpawnRotation;
		public Vector3 SpawnScale;
	}
}
