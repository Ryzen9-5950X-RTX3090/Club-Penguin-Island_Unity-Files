using System;
using UnityEngine;

namespace DisneyMobile.CoreUnitySystems.PoolStrategies
{
	[Serializable]
	public class ReplaceFarthestFromTransform : ObjectPoolFullStrategy
	{
		[SerializeField]
		public Transform TargetTransform;
	}
}
