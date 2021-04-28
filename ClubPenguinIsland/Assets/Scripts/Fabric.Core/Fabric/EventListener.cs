using UnityEngine;

namespace Fabric
{
	public class EventListener : MonoBehaviour
	{
		[SerializeField]
		public string _eventName;
		[SerializeField]
		public int _eventID;
		[SerializeField]
		public bool _overrideEventTriggerAction;
		[SerializeField]
		public OverrideParameters _overrideParameters;
	}
}
