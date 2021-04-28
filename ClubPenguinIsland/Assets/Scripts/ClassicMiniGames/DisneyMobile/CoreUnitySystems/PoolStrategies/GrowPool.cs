using System;
using UnityEngine;

namespace DisneyMobile.CoreUnitySystems.PoolStrategies
{
	[Serializable]
	public class GrowPool : ObjectPoolFullStrategy
	{
		[SerializeField]
		private ObjectPoolGrowthStrategy m_growthStrategy;
	}
}
