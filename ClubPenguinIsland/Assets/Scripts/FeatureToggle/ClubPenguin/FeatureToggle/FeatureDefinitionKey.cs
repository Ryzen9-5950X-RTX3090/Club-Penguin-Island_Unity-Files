using System;
using ClubPenguin.Core.StaticGameData;

namespace ClubPenguin.FeatureToggle
{
	[Serializable]
	public class FeatureDefinitionKey : TypedStaticGameDataKey<FeatureDefinition, string>
	{
		public FeatureDefinitionKey(string id)
		{
		}

	}
}
