using UnityEngine;

namespace Fabric
{
	public class SilentComponent : AudioComponent
	{
		[SerializeField]
		public float _silenceLength;
		[SerializeField]
		public float _randomizeSilenceLength;
		[SerializeField]
		public bool _looping;
	}
}
