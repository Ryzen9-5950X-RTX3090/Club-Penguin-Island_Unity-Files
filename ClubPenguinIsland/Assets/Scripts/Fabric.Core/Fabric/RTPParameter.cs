using System;
using UnityEngine;
using Fabric.TimelineComponent;

namespace Fabric
{
	[Serializable]
	public class RTPParameter
	{
		[SerializeField]
		public string Name;
		[SerializeField]
		public float _value;
		[SerializeField]
		public float _min;
		[SerializeField]
		public float _max;
		[SerializeField]
		public ParameterLoopBehaviour _loopBehaviour;
		[SerializeField]
		public float _velocity;
		[SerializeField]
		public float _seekSpeed;
		[SerializeField]
		private float _seekTarget;
		[SerializeField]
		public bool _resetToDefaultValue;
		[SerializeField]
		public RTPMarkers _markers;
	}
}
