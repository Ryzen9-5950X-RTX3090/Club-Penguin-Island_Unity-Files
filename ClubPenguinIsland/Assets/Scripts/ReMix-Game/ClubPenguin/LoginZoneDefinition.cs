using ClubPenguin.Core.StaticGameData;
using System;
using ClubPenguin.Core;

namespace ClubPenguin
{
	public class LoginZoneDefinition : StaticGameDataDefinition
	{
		[Serializable]
		public struct LoginZoneCondition
		{
			public LoginZoneDefinition.ConditionType TypeOfCondition;
			public string PlayerPrefsKey;
			public bool AddPlayerNameToKey;
			public ScheduledEventDateDefinitionKey DateDefinitionKey;
		}

		[Serializable]
		public struct CompositeLoginZoneCondition
		{
			public LoginZoneDefinition.LoginZoneCondition[] ANDConditions;
		}

		public enum ConditionType
		{
			PlayerPrefExist = 1,
			PlayerPrefDoesNotExist = 2,
		}

		public ZoneDefinitionKey Zone;
		public ScheduledEventDateDefinitionKey ScheduledEventDateKey;
		public CompositeLoginZoneCondition[] ANYConditions;
	}
}
