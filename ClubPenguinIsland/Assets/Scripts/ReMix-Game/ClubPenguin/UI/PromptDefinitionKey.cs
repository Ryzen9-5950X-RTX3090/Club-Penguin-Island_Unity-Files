using System;
using ClubPenguin.Core.StaticGameData;

namespace ClubPenguin.UI
{
	[Serializable]
	public class PromptDefinitionKey : TypedStaticGameDataKey<PromptDefinition, string>
	{
		public PromptDefinitionKey(string id)
		{
		}

	}
}
