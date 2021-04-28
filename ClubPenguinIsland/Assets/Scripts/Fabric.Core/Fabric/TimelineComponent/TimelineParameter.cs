using System;
using UnityEngine;
using Fabric;

namespace Fabric.TimelineComponent
{
	[Serializable]
	public class TimelineParameter : MonoBehaviour
	{
		[SerializeField]
		public string _name;
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
		private float _value;
		[SerializeField]
		public bool _resetToDefaultValue;
		[SerializeField]
		public RTPMarkers _markers;
	}
}
