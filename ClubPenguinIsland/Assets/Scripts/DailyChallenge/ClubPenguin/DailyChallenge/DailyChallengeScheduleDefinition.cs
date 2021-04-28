using System;
using ClubPenguin.Core.StaticGameData;
using UnityEngine;

namespace ClubPenguin.DailyChallenge
{
	[Serializable]
	public class DailyChallengeScheduleDefinition : StaticGameDataDefinition
	{
		[TextAreaAttribute]
		public string Description;
		public DailyChallengeDefinitionContentKey[] Assets;
		public string CreationSettings;
	}
}
