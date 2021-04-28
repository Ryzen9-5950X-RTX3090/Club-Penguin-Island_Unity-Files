using System;
using ClubPenguin.Core;
using ClubPenguin.Tags;
using ClubPenguin;

namespace ClubPenguin.Adventure
{
	[Serializable]
	public class SubmitCatalogItemWatcher : TaskWatcher
	{
		public OutfitTagMatcher TagMatcher;
		public CatalogThemeDefinition[] MatchingThemes;
	}
}
