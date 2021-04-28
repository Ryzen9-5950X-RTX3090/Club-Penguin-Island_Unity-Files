using UnityEngine;
using System.Collections.Generic;
using Disney.Kelowna.Common;
using ClubPenguin.Configuration;

namespace ClubPenguin.LOD
{
	public class LODSystemData : ScriptableObject
	{
		public string MetricName;
		public List<LODWeightingData> RuleData;
		public PrefabContentKey ContentKey;
		public ConditionalDefinition_Int QualityIndex;
		public ConditionalDefinition_IntArray Limits;
		public float LimitMultipler;
		public ConditionalDefinition_FloatArray RefreshRates;
		public int MaxProcessesPerUpdate;
	}
}
