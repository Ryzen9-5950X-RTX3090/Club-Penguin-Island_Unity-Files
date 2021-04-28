using System;
using ClubPenguin.Core.StaticGameData;
using UnityEngine;
using ClubPenguin.Core;
using Disney.Kelowna.Common;

namespace ClubPenguin.Task
{
	[Serializable]
	public class TaskDefinition : StaticGameDataDefinition
	{
		public enum TaskCategory
		{
			Collect = 0,
			Make = 1,
			Chat = 2,
			Emote = 3,
			Express = 4,
			Action = 5,
			Interact = 6,
			Explore = 7,
			Supplies = 8,
			Sharing = 9,
			Prop = 10,
			Puzzle = 11,
			Roleplay = 12,
			TaskCompletion = 13,
		}

		public enum TaskDifficulty
		{
			Easy = 0,
			Medium = 1,
			Hard = 2,
		}

		public enum TaskGroup
		{
			Individual = 0,
			Teamwork = 1,
			Community = 2,
		}

		public enum TaskComparison
		{
			LessThan = 0,
			Equals = 1,
			GreaterThan = 2,
		}

		[SerializeField]
		private bool isMemberOnly;
		public TaskCategory Category;
		public TaskDifficulty Difficulty;
		public LockType LevelType;
		public int LevelRequired;
		public string Title;
		public string Description;
		public int Threshold;
		public TaskGroup Group;
		public int CounterMax;
		public TaskComparison Comparison;
		public RewardDefinition Reward;
		public string CompletionMessage;
		public PrefabContentKey TaskLogItemContentKey;
		public PrefabContentKey DailyChallengeItemContentKey;
	}
}
