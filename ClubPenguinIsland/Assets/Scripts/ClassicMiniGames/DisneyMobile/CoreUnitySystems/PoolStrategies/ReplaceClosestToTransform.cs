using System;
using UnityEngine;

namespace DisneyMobile.CoreUnitySystems.PoolStrategies
{
	[Serializable]
	public class ReplaceClosestToTransform : ObjectPoolFullStrategy
	{
		[SerializeField]
		public Transform TargetTransform;
	}
}
