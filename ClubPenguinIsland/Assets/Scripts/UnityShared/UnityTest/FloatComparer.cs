namespace UnityTest
{
	public class FloatComparer : ComparerBaseGeneric<float>
	{
		public enum CompareTypes
		{
			Equal = 0,
			NotEqual = 1,
			Greater = 2,
			Less = 3,
		}

		public CompareTypes compareTypes;
		public double floatingPointError;
	}
}
