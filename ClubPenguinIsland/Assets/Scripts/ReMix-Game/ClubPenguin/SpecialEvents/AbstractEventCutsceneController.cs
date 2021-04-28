using UnityEngine;
using System;
using ClubPenguin.Core;
using ClubPenguin;

namespace ClubPenguin.SpecialEvents
{
	public class AbstractEventCutsceneController : MonoBehaviour
	{
		[Serializable]
		public struct EventCutsceneEvent
		{
			public string Name;
			public ScheduledEventDateDefinitionKey DateDefinitionKey;
			public ScheduledDecorationData[] DecorationData;
			public ScheduledCutSceneData CutsceneData;
		}

		public string EventName;
		public ZoneDefinition EventZone;
		public bool HideWhenQuestActive;
		public ScheduledEventDateDefinitionKey DateDefinitionKey;
		public bool RemoveDecorationsAfterCutscene;
		public EventCutsceneEvent[] Events;
	}
}
