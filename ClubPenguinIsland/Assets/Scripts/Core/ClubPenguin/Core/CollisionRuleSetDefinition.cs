using System;
using ClubPenguin.Core.StaticGameData;

namespace ClubPenguin.Core
{
	[Serializable]
	public class CollisionRuleSetDefinition : StaticGameDataDefinition
	{
		public string Id;
		public CollisionRuleDefinition[] InstalledItemRules;
	}
}
