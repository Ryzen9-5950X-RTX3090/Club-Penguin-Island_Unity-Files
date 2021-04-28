using System;
using UnityEngine;
using System.Collections.Generic;

namespace Fabric
{
	[Serializable]
	public class EventEditor
	{
		[Serializable]
		public class EventItem
		{
			[SerializeField]
			public Event _event;
			[SerializeField]
			public Component _component;
			[SerializeField]
			public bool _ignoreEventAction;
			[SerializeField]
			public ParameterData _parameterData;
			[SerializeField]
			public DSPParameterData _dspParameter;
			[SerializeField]
			public SwitchPresetData _switchPresetData;
			[SerializeField]
			public GlobalParameterData _globalParameterData;
			[SerializeField]
			public GlobalSwitchParameterData _globalSwitchParameterData;
			[SerializeField]
			public TransitionToSnapshotData _transitionToSnapshotData;
			[SerializeField]
			public string _eventValue;
			[SerializeField]
			public float _eventParameter;
			[SerializeField]
			public double _eventScheduleParameter;
			[SerializeField]
			public string _eventParameterName;
			[SerializeField]
			public DSPType _dspType;
			[SerializeField]
			public float _timeToTarget;
			[SerializeField]
			public float _curve;
			[SerializeField]
			public float _min;
			[SerializeField]
			public float _max;
		}

		[Serializable]
		public class EventEntry
		{
			[SerializeField]
			public float _delay;
			[SerializeField]
			public int _probability;
			[SerializeField]
			public int _postCountMax;
			[SerializeField]
			public bool _addToQueue;
			[SerializeField]
			public string _eventName;
			[SerializeField]
			public bool _ignoreIncomingGameObject;
			[SerializeField]
			public List<EventEditor.EventItem> _eventList;
		}

		[SerializeField]
		public List<string> _eventNames;
		[SerializeField]
		public List<EventEditor.EventEntry> _eventList;
	}
}
