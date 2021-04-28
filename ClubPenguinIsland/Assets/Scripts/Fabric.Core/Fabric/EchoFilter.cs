using UnityEngine;

namespace Fabric
{
	public class EchoFilter : DSPComponent
	{
		[SerializeField]
		public DSPParameter _delay;
		[SerializeField]
		public DSPParameter _decayRatio;
		[SerializeField]
		public DSPParameter _dryMix;
		[SerializeField]
		public DSPParameter _wetMix;
	}
}
