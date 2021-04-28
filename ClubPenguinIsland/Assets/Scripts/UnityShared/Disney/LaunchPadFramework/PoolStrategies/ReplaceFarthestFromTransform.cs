using System;
using UnityEngine;

namespace Disney.LaunchPadFramework.PoolStrategies
{
	[Serializable]
	public class ReplaceFarthestFromTransform : ObjectPoolFullStrategy
	{
		[SerializeField]
		public Transform TargetTransform;
	}
}
