using System;
using UnityEngine;
using Fabric.TimelineComponent;

namespace Fabric
{
	[Serializable]
	public class RTPParameterToProperty
	{
		[SerializeField]
		public RTPParameter _parameter;
		[SerializeField]
		public RTPProperty _property;
		[SerializeField]
		public VolumeMeter _volumeMeter;
		[SerializeField]
		public string _globalParameterName;
		[SerializeField]
		public RTPModulator _rtpModulator;
		[SerializeField]
		public RTPParameterType _type;
		[SerializeField]
		public RTPPropertyType _propertyType;
		[SerializeField]
		public Envelope _envelope;
	}
}
