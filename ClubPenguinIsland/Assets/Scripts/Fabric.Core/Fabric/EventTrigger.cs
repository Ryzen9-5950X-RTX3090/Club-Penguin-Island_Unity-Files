using UnityEngine;

namespace Fabric
{
	public class EventTrigger : MonoBehaviour
	{
		public SwitchPresetData switchPresetData;
		public GlobalParameterData globalParameterData;
		public GlobalSwitchParameterData globalSwitchParameterData;
		public TransitionToSnapshotData transitionToSnapshotData;
		[SerializeField]
		public string _eventName;
		[SerializeField]
		public EventAction _eventAction;
		[SerializeField]
		public EventTriggerEnterType _eventTriggerOnEnter;
		[SerializeField]
		public string _triggerEnterTag;
		[SerializeField]
		public bool _trigger;
		[SerializeField]
		public string _eventValue;
		[SerializeField]
		public float _eventParameter;
		[SerializeField]
		public double _eventScheduleParameter;
		[SerializeField]
		public string _eventParameterName;
		[SerializeField]
		public float _delay;
		[SerializeField]
		public int _probability;
		[SerializeField]
		public EventTriggerType _eventTriggerType;
		[SerializeField]
		public bool _ignoreGameObject;
		[SerializeField]
		public bool _overrideParentGameObject;
		[SerializeField]
		public bool _addToQueue;
		[SerializeField]
		public float _min;
		[SerializeField]
		public float _max;
		[SerializeField]
		public DSPType _dspType;
		[SerializeField]
		public float _timeToTarget;
		[SerializeField]
		public float _curve;
		public GameObject _parentGameObject;
		[SerializeField]
		public bool _useEventID;
		[SerializeField]
		public int _postCountMax;
	}
}
