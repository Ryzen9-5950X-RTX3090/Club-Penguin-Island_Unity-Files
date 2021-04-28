using UnityEngine;

namespace UnityTest
{
	public class TransformComparer : ComparerBaseGeneric<Transform>
	{
		public enum CompareType
		{
			Equals = 0,
			NotEquals = 1,
		}

		public CompareType compareType;
	}
}
