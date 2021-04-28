using Fabric;
using UnityEngine;

namespace Fabric.TimelineComponent
{
	public class TimelineRegion : Component
	{
		[SerializeField]
		public RandomComponent _component;
		[SerializeField]
		public Envelope _volumeEnvelope;
		[SerializeField]
		public float _x;
		[SerializeField]
		public bool _loop;
		[SerializeField]
		public float _width;
		[SerializeField]
		public bool _autopitchenabled;
		[SerializeField]
		public float _autopitchreference;
		[SerializeField]
		public RegionStartMode _startMode;
		[SerializeField]
		public RegionLoopMode _loopMode;
		[SerializeField]
		public CurveTypes _fadeInType;
		[SerializeField]
		public CurveTypes _fadeOutType;
		[SerializeField]
		public float _regionVolume;
	}
}
