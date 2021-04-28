using System;
using UnityEngine;

namespace Disney.LaunchPadFramework.PoolStrategies
{
	[Serializable]
	public class GrowPool : ObjectPoolFullStrategy
	{
		[SerializeField]
		private ObjectPoolGrowthStrategy m_growthStrategy;
	}
}
