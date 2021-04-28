using System;
using ClubPenguin.Core.StaticGameData;
using UnityEngine;

namespace ClubPenguin.DailyChallenge
{
	[Serializable]
	public class ScheduleDefinition : StaticGameDataDefinition
	{
		[TextAreaAttribute]
		public string Description;
		public DailyChallengeDefinitionContentKey[] Assets;
	}
}
