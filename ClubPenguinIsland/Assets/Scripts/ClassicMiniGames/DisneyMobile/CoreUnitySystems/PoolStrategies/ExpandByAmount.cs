using System;
using UnityEngine;

namespace DisneyMobile.CoreUnitySystems.PoolStrategies
{
	[Serializable]
	public class ExpandByAmount : ObjectPoolGrowthStrategy
	{
		[SerializeField]
		private int m_amount;
	}
}
