using System;
using UnityEngine;

namespace Disney.LaunchPadFramework.PoolStrategies
{
	[Serializable]
	public class ReplaceClosestToTransform : ObjectPoolFullStrategy
	{
		[SerializeField]
		public Transform TargetTransform;
	}
}
