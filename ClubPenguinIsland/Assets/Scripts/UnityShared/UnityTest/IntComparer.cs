namespace UnityTest
{
	public class IntComparer : ComparerBaseGeneric<int>
	{
		public enum CompareType
		{
			Equal = 0,
			NotEqual = 1,
			Greater = 2,
			GreaterOrEqual = 3,
			Less = 4,
			LessOrEqual = 5,
		}

		public CompareType compareType;
	}
}
