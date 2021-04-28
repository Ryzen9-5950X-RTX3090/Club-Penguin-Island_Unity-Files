using UnityEngine;

namespace UnityTest
{
	public class IsRenderedByCamera : ComparerBaseGeneric<Renderer, Camera>
	{
		public enum CompareType
		{
			IsVisible = 0,
			IsNotVisible = 1,
		}

		public CompareType compareType;
	}
}
