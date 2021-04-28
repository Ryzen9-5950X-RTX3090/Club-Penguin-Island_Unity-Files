using UnityEngine;
using System;

namespace ClubPenguin.UI
{
	public class StateCheckerEventSource : MonoBehaviour
	{
		[Serializable]
		private struct StateToEvent
		{
			public StateToEvent(string state, string eventName) : this()
			{
			}

			public string State;
			public string Event;
		}

		[SerializeField]
		private string StateMachineToCheck;
		[SerializeField]
		private string Target;
		[SerializeField]
		private StateToEvent[] StatesToEvents;
	}
}
