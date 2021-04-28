using UnityEngine;

namespace UnityTest
{
	public class Vector3Comparer : VectorComparerBase<Vector3>
	{
		public enum CompareType
		{
			MagnitudeEquals = 0,
			MagnitudeNotEquals = 1,
		}

		public CompareType compareType;
		public double floatingPointError;
	}
}
