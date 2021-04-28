using System;
using UnityEngine;

namespace Fabric
{
	[Serializable]
	public class OverrideParameters
	{
		[SerializeField]
		public bool _overrideIncomingEventAction;
		[SerializeField]
		public EventAction _incomingEventAction;
		[SerializeField]
		public EventAction _overrideEventAction;
		[SerializeField]
		public OverrideParameterType _type;
		[SerializeField]
		private float _floatParameter;
		[SerializeField]
		private string _stringParameter;
		[SerializeField]
		private SwitchPresetData _switchPresetData;
		[SerializeField]
		private DSPParameterData _dspParameterData;
		[SerializeField]
		private TransitionToSnapshotData _transitionToSnapshotData;
	}
}
