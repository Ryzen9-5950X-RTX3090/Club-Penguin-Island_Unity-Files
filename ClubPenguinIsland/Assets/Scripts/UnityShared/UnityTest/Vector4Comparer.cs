using UnityEngine;

namespace UnityTest
{
	public class Vector4Comparer : VectorComparerBase<Vector4>
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
