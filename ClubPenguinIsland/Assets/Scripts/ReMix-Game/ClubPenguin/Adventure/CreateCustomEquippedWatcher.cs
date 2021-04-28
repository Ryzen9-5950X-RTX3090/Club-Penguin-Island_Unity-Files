using System;
using ClubPenguin.Core;
using ClubPenguin.Tags;

namespace ClubPenguin.Adventure
{
	[Serializable]
	public class CreateCustomEquippedWatcher : TaskWatcher
	{
		public OutfitTagMatcher TagMatcher;
	}
}
