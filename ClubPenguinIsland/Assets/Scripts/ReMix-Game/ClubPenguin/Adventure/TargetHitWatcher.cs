using System;
using ClubPenguin.Core;

namespace ClubPenguin.Adventure
{
	[Serializable]
	public class TargetHitWatcher : TaskWatcher
	{
		public TagDefinition[] MatchingTagDefinitions;
	}
}
