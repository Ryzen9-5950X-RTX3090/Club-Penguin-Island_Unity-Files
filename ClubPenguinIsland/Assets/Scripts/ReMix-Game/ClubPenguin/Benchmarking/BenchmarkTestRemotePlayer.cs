using UnityEngine;

namespace ClubPenguin.Benchmarking
{
	public class BenchmarkTestRemotePlayer : BenchmarkTestStage
	{
		public long LastSessionID;
		public int Bots;
		public int SpawnDelayFrames;
		public Vector3 SpawnPos;
		public float SpawnRadius;
	}
}
