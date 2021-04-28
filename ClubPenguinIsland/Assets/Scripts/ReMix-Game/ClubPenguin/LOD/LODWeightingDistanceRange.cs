using UnityEngine;

namespace ClubPenguin.LOD
{
	public class LODWeightingDistanceRange : LODWeightingRule
	{
		public LODWeightingDistanceRangeData Data;
		[SerializeField]
		private Transform target;
	}
}
