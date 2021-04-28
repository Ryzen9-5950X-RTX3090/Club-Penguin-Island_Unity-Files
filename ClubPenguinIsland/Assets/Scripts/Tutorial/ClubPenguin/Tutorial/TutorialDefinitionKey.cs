using System;
using ClubPenguin.Core.StaticGameData;

namespace ClubPenguin.Tutorial
{
	[Serializable]
	public class TutorialDefinitionKey : TypedStaticGameDataKey<TutorialDefinition, int>
	{
		public TutorialDefinitionKey(int id)
		{
		}

	}
}
