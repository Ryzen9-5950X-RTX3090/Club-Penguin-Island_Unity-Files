using System;

namespace ClubPenguin.LOD
{
	public class LODWeightingDistanceRangeData : LODWeightingData
	{
		[Serializable]
		public struct Range
		{
			public int Distance;
			public float Weighting;
		}

		public string TargetTag;
		public int DefaultWeighing;
		public Range[] Ranges;
	}
}
