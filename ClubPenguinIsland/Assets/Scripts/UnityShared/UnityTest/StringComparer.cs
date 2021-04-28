using System;

namespace UnityTest
{
	public class StringComparer : ComparerBaseGeneric<string>
	{
		public enum CompareType
		{
			Equal = 0,
			NotEqual = 1,
			Shorter = 2,
			Longer = 3,
		}

		public CompareType compareType;
		public StringComparison comparisonType;
		public bool ignoreCase;
	}
}
