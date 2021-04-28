using System;
using ClubPenguin.Core;

namespace ClubPenguin.Adventure
{
	[Serializable]
	public class TargetDestroyWatcher : TaskWatcher
	{
		public TagDefinition[] MatchingTagDefinitions;
	}
}
