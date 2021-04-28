using System;
using UnityEngine;

namespace Fabric
{
	[Serializable]
	public class Event
	{
		[SerializeField]
		public string _eventName;
		[SerializeField]
		public int _eventID;
		[SerializeField]
		public EventAction EventAction;
		[SerializeField]
		public GameObject parentGameObject;
		[SerializeField]
		public float _delay;
		[SerializeField]
		public float _delayTimer;
		[SerializeField]
		public string _eventCategory;
		[SerializeField]
		public int _priority;
	}
}
