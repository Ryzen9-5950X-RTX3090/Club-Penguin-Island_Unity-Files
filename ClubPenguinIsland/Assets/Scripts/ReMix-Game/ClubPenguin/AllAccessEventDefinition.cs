using System;
using ClubPenguin.Core.StaticGameData;
using ClubPenguin.Core;

namespace ClubPenguin
{
	[Serializable]
	public class AllAccessEventDefinition : StaticGameDataDefinition
	{
		public string Id;
		public ScheduledEventDateDefinitionKey DateDefinitionKey;
		public bool ApplyToGoogleUsers;
		public bool ApplyToAppleUsers;
	}
}
