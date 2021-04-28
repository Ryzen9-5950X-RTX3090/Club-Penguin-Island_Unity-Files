using System;
using ClubPenguin.PartyGames;
using UnityEngine;

namespace ClubPenguin.Game.PartyGames
{
	[Serializable]
	public class TubeRaceDefinition : PartyGameDataDefinition
	{
		public float MinimumCompletionTimeInSeconds;
		public int MaximumCompletionTimeInSeconds;
		public float MaxValidationRadius;
		public Vector3 RaceEndPosition;
		public int DefaultPoints;
		public int ShowRewardsDelayInSeconds;
		public PartyGameEndPlacement SinglePlayerPlacement;
		public int StartingPoints;
		public int PointsDeductedPerSecond;
		public Vector3 RaceRestartPosition;
		public string QuestEventIdentifier;
	}
}
