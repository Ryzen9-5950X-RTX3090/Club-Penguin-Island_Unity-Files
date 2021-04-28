using UnityEngine;
using System.Collections.Generic;

namespace Fabric
{
	public class EventManager : MonoBehaviour
	{
		[SerializeField]
		public GlobalParameterManager _globalParameterManager;
		[SerializeField]
		public List<string> _eventList;
		[SerializeField]
		public EventEditor _eventEditor;
		public CodeProfiler profiler;
		[SerializeField]
		public bool _eventMenuListFoldout;
		[SerializeField]
		public bool _eventListFoldout;
		[SerializeField]
		public bool _forceQueueAllEvents;
		[SerializeField]
		public EventSequencer _eventSequencer;
	}
}
