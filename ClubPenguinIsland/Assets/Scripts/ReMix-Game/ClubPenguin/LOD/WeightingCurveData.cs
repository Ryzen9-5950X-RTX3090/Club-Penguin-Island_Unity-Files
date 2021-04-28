using System;
using UnityEngine;

namespace ClubPenguin.LOD
{
	[Serializable]
	public struct WeightingCurveData
	{
		public float StartWeighting;
		public AnimationCurve Curve;
		public float Length;
	}
}
