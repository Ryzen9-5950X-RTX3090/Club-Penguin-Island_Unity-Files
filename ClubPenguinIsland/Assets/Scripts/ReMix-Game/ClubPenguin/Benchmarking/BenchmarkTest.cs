using UnityEngine;

namespace ClubPenguin.Benchmarking
{
	public class BenchmarkTest : ScriptableObject
	{
		public int PollTime;
		public bool MemoryProfiling;
		public BenchmarkTestStage[] Stages;
	}
}
