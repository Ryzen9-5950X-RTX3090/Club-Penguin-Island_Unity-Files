using System;
using ClubPenguin.Core.StaticGameData;

namespace ClubPenguin.Core
{
	[Serializable]
	public class TagDefinitionKey : TypedStaticGameDataKey<TagDefinition, string>
	{
		public TagDefinitionKey(string id)
		{
		}

	}
}
