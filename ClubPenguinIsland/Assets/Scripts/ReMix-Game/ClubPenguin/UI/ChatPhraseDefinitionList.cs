using System;
using UnityEngine;
using System.Collections.Generic;

namespace ClubPenguin.UI
{
	[Serializable]
	public class ChatPhraseDefinitionList : ScriptableObject
	{
		public List<ChatPhraseDefinition> ChatPhraseDefinitions;
	}
}
