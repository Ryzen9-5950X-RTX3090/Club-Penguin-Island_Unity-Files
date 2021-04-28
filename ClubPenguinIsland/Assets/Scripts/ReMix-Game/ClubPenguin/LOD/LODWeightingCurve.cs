using UnityEngine;

namespace ClubPenguin.LOD
{
	public class LODWeightingCurve : LODWeightingRule
	{
		public WeightingCurveData CurveData;
		[SerializeField]
		private float timer;
	}
}
