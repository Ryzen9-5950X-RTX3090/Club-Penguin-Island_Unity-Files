using Fabric;
using UnityEngine;

namespace Fabric.TimelineComponent
{
	public class TimelineLayer : Component
	{
		[SerializeField]
		public TimelineRegion[] _regions;
		[SerializeField]
		public ParameterToProperty[] _parameters;
		[SerializeField]
		public TimelineParameter _controlParameter;
	}
}
