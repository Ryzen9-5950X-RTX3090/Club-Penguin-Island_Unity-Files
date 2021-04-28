using System;

namespace Fabric
{
	[Serializable]
	public class CodeProfiler
	{
		public float totalMS;
		public float recordedMS;
		public float percent;
		public float msPerFrame;
		public float maxMsPerFrame;
		public float msPerCall;
		public float timesPerFrame;
	}
}
