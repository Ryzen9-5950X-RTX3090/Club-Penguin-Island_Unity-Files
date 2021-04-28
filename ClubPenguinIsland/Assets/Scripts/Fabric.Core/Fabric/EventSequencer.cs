using System;
using UnityEngine;
using System.Collections.Generic;

namespace Fabric
{
	[Serializable]
	public class EventSequencer
	{
		[Serializable]
		public class EventSequencerEntry
		{
			[Serializable]
			public class EventEntry
			{
				[SerializeField]
				public EventNotificationType notificationType;
				[SerializeField]
				public string eventName;
			}

			[SerializeField]
			public EventNotificationType notificationType;
			[SerializeField]
			public List<EventSequencer.EventSequencerEntry.EventEntry> events;
			[SerializeField]
			public bool _restartOnEvent;
			[SerializeField]
			public bool _loop;
		}

		[Serializable]
		public class SequenceEntries : FastList<string, EventSequencer.EventSequencerEntry>
		{
		}

		[SerializeField]
		public SequenceEntries _sequenceEntries;
	}
}
