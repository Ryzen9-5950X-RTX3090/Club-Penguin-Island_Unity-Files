using UnityEngine;

namespace UnityTest
{
	public class ColliderComparer : ComparerBaseGeneric<Bounds>
	{
		public enum CompareType
		{
			Intersects = 0,
			DoesNotIntersect = 1,
		}

		public CompareType compareType;
	}
}
