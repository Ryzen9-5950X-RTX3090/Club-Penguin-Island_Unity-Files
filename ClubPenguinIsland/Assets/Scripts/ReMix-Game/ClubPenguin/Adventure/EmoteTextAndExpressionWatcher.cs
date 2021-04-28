using System;
using ClubPenguin.Core;
using ClubPenguin.Chat;
using ClubPenguin.UI;

namespace ClubPenguin.Adventure
{
	[Serializable]
	public class EmoteTextAndExpressionWatcher : TaskWatcher
	{
		public enum ExpressionMatchType
		{
			ANY = 0,
			ALL = 1,
			ONLY = 2,
		}

		public enum ExpressionMatchCounting
		{
			ONE_PER_MESSAGE = 0,
			MULTI_PER_MESSAGE = 1,
		}

		public ExpressionMatchType MatchType;
		public ExpressionMatchCounting MatchCounting;
		public EmoteDefinition[] Emotes;
		public string[] Texts;
		public SizzleClipDefinition[] SizzleClips;
	}
}
