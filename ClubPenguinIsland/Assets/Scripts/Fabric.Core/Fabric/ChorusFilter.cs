using UnityEngine;

namespace Fabric
{
	public class ChorusFilter : DSPComponent
	{
		[SerializeField]
		public DSPParameter _dryMix;
		[SerializeField]
		public DSPParameter _wetMix1;
		[SerializeField]
		public DSPParameter _wetMix2;
		[SerializeField]
		public DSPParameter _wetMix3;
		[SerializeField]
		public DSPParameter _delay;
		[SerializeField]
		public DSPParameter _rate;
		[SerializeField]
		public DSPParameter _depth;
		[SerializeField]
		public DSPParameter _feedback;
	}
}
