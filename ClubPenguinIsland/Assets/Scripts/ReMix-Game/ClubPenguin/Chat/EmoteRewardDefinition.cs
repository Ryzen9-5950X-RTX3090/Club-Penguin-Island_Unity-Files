using System;
using ClubPenguin.Core;

namespace ClubPenguin.Chat
{
	[Serializable]
	public class EmoteRewardDefinition : AbstractStaticGameDataRewardDefinition<EmoteDefinition>
	{
		public EmoteDefinition Definition;
	}
}
