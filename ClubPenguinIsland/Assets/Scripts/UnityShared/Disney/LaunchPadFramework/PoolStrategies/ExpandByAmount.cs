using System;
using UnityEngine;

namespace Disney.LaunchPadFramework.PoolStrategies
{
	[Serializable]
	public class ExpandByAmount : ObjectPoolGrowthStrategy
	{
		[SerializeField]
		private int m_amount;
	}
}
