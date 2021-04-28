using UnityEngine;

namespace ClubPenguin.LOD
{
	public class LODWeightingDistance : LODWeightingRule
	{
		public LODWeightingDistanceData Data;
		[SerializeField]
		private Transform target;
	}
}
