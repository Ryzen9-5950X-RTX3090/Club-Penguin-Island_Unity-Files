using System;
using ClubPenguin.Core;

namespace ClubPenguin.Tags
{
	[Serializable]
	public struct TagsArray
	{
		public TagsArray(TagDefinition[] definitions) : this()
		{
		}

		public TagDefinition[] TagDefinitions;
	}
}
