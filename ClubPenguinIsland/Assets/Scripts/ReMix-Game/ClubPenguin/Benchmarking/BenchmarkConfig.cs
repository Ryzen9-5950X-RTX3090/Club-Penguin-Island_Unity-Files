using UnityEngine;
using Disney.Kelowna.Common.Environment;

namespace ClubPenguin.Benchmarking
{
	public class BenchmarkConfig : ScriptableObject
	{
		public string UserName;
		public string Password;
		public Environment ServerEnvironment;
		public BenchmarkTest[] Tests;
	}
}
