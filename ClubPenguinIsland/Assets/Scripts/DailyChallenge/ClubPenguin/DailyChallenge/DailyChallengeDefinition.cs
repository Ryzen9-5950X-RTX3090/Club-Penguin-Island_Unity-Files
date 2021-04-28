using System;
using ClubPenguin.Core.StaticGameData;
using UnityEngine;
using ClubPenguin.Task;

namespace ClubPenguin.DailyChallenge
{
	[Serializable]
	public class DailyChallengeDefinition : StaticGameDataDefinition
	{
		[TextAreaAttribute]
		public string Description;
		public TaskDefinitionContentKey TaskDefinitionContentKey;
	}
}
