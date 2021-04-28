using UnityEngine;

namespace Fabric
{
	public class HighPassFilter : DSPComponent
	{
		[SerializeField]
		public DSPParameter _cutoffFrequency;
		[SerializeField]
		public DSPParameter _highpassResonaceQ;
	}
}
