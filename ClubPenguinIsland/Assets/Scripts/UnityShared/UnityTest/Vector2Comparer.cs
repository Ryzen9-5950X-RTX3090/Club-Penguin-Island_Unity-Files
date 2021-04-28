using UnityEngine;

namespace UnityTest
{
	public class Vector2Comparer : VectorComparerBase<Vector2>
	{
		public enum CompareType
		{
			MagnitudeEquals = 0,
			MagnitudeNotEquals = 1,
		}

		public CompareType compareType;
		public float floatingPointError;
	}
}
