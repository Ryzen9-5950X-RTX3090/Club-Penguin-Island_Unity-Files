using System;
using UnityEngine;

namespace Fabric
{
	[Serializable]
	public class CustomCurves
	{
		[SerializeField]
		public string _name;
		[SerializeField]
		public float _minDistance;
		[SerializeField]
		public float _maxDistance;
		[SerializeField]
		public bool _enableCustomRolloff;
		[SerializeField]
		public AnimationCurve _customRolloff;
		[SerializeField]
		public bool _enableSpatialBlend;
		[SerializeField]
		public AnimationCurve _spatialBlend;
		[SerializeField]
		public bool _enableReverbZoneMix;
		[SerializeField]
		public AnimationCurve _reverbZoneMix;
		[SerializeField]
		public bool _enableSpread;
		[SerializeField]
		public AnimationCurve _spread;
	}
}
