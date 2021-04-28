using UnityEngine;

namespace Fabric
{
	public class LowPassFilter : DSPComponent
	{
		[SerializeField]
		public DSPParameter _cutoffFrequency;
		[SerializeField]
		public DSPParameter _lowpassResonaceQ;
	}
}
