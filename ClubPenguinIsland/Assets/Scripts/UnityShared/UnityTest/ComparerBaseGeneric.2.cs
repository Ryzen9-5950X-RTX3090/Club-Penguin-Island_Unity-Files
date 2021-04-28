using System;

namespace UnityTest
{
	[Serializable]
	public class ComparerBaseGeneric<T1, T2> : ComparerBase
	{
		public T2 constantValueGeneric;
	}
}
