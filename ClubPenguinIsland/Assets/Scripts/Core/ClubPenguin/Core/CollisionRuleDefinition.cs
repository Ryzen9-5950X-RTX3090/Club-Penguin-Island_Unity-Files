using System;
using ClubPenguin.Core.StaticGameData;

namespace ClubPenguin.Core
{
	[Serializable]
	public class CollisionRuleDefinition : StaticGameDataDefinition
	{
		public CollisionRuleSetDefinitionKey InstalledItem;
		public CollisionRuleResult Result;
	}
}
