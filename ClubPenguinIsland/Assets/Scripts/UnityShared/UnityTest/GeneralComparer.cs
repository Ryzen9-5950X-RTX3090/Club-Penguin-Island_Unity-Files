namespace UnityTest
{
	public class GeneralComparer : ComparerBase
	{
		public enum CompareType
		{
			AEqualsB = 0,
			ANotEqualsB = 1,
		}

		public CompareType compareType;
	}
}
