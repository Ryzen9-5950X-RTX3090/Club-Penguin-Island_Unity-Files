using UnityEngine;

namespace Fabric
{
	public class SamplePlayerComponent : AudioComponent
	{
		[SerializeField]
		public string sampleFileName;
		[SerializeField]
		public float[] _channelGains;
		[SerializeField]
		public int _leftLoopMarker;
		[SerializeField]
		public int _rightLoopMarker;
	}
}
