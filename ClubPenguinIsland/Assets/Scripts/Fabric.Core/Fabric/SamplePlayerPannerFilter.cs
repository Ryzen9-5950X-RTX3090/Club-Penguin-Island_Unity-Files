using UnityEngine;

namespace Fabric
{
	public class SamplePlayerPannerFilter : DSPComponent
	{
		[SerializeField]
		public DSPParameter _FrontLeftChannel;
		[SerializeField]
		public DSPParameter _FrontRightChannel;
		[SerializeField]
		public DSPParameter _CenterChannel;
		[SerializeField]
		public DSPParameter _LFEChannel;
		[SerializeField]
		public DSPParameter _RearLeftChannel;
		[SerializeField]
		public DSPParameter _RearRightChannel;
	}
}
