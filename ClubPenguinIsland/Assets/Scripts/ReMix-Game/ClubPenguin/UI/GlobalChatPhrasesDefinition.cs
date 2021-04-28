using System;
using ClubPenguin.Core.StaticGameData;
using System.Collections.Generic;

namespace ClubPenguin.UI
{
	[Serializable]
	public class GlobalChatPhrasesDefinition : StaticGameDataDefinition
	{
		public List<ChatPhraseDefinition> ChatPhraseDefinitions;
	}
}
