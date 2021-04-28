using System;
using ClubPenguin.Core.StaticGameData;

namespace ClubPenguin.UI
{
	[Serializable]
	public class ChatPhraseDefinition : StaticGameDataDefinition
	{
		public string Token;
		public SizzleClipDefinitionKey SizzleClipKey;
	}
}
