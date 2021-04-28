using UnityEngine;

namespace UnityTest
{
	public class ComparerBase : ActionBase
	{
		public enum CompareToType
		{
			CompareToObject = 0,
			CompareToConstantValue = 1,
			CompareToNull = 2,
		}

		public CompareToType compareToType;
		public GameObject other;
		public string otherPropertyPath;
	}
}
