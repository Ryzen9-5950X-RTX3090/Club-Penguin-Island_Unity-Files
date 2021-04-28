using UnityEngine;
using System;

namespace Foundation.Unity
{
	public class FibreBudget : ScriptableObject
	{
		[Serializable]
		public struct TimeSlice
		{
			public string Name;
			public float DurationMs;
		}

		public TimeSlice[] TimeSlices;
	}
}
