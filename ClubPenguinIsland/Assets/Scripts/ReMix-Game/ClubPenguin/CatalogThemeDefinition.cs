using System;
using ClubPenguin.Core.StaticGameData;
using ClubPenguin.Core;

namespace ClubPenguin
{
	[Serializable]
	public class CatalogThemeDefinition : StaticGameDataDefinition
	{
		public int Id;
		public string Title;
		public string Description;
		public string CompleteMessage;
		public TagDefinition[] TemplateTags;
		public TagDefinition[] FabricTags;
		public TagDefinition[] DecalTags;
	}
}
