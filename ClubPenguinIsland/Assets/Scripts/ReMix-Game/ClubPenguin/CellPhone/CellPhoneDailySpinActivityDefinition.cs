using System;
using ClubPenguin.Core;
using System.Collections.Generic;

namespace ClubPenguin.CellPhone
{
	[Serializable]
	public class CellPhoneDailySpinActivityDefinition : CellPhoneActivityDefinition
	{
		[Serializable]
		public struct SpinReward
		{
			public int SpinOutcomeId;
			public int Weight;
			public RewardDefinition Reward;
			public int WheelPosition;
		}

		[Serializable]
		public struct ChestReward
		{
			public int RewardId;
			public bool IsMemberOnly;
			public RewardDefinition Reward;
		}

		[Serializable]
		public struct ChestDefinition
		{
			public int ChestId;
			public int NumPunchesPerChest;
			public int NumChestsToNextLevel;
			public bool IsChestSpinNotAllowed;
			public RewardDefinition FirstTimeClaimedReward;
			public string ChestTypeToken;
			public string ChestNameToken;
			public string ChestNameLevelToken;
			public List<CellPhoneDailySpinActivityDefinition.ChestReward> RepeatableChestRewards;
			public List<CellPhoneDailySpinActivityDefinition.ChestReward> NonRepeatableChestRewards;
		}

		public List<CellPhoneDailySpinActivityDefinition.SpinReward> SpinRewards;
		public List<CellPhoneDailySpinActivityDefinition.ChestDefinition> ChestDefinitions;
		public RewardDefinition DefaultReward;
		public SpinReward FirstTimeSpinReward;
		public int InitialChestWeight;
		public int ChestWeightIncreasePerSpin;
		public int ChestSpinOutcomeId;
		public int ChestWheelPosition;
		public int InitialRespinWeight;
		public int RespinWeightIncreasePerSpin;
		public RewardDefinition RespinReward;
		public int RespinSpinOutcomeId;
		public int RespinWheelPosition;
	}
}
