using System;
using ClubPenguin.Core.StaticGameData;

namespace ClubPenguin.Core
{
	[Serializable]
	public class CollisionRuleSetDefinitionKey : TypedStaticGameDataKey<CollisionRuleSetDefinition, string>
	{
		public CollisionRuleSetDefinitionKey(string id)
		{
		}

	}
}
