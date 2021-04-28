using System;
using ClubPenguin.PartyGames;

namespace ClubPenguin.Game.PartyGames
{
	[Serializable]
	public class ScavengerHuntDefinition : PartyGameDataDefinition
	{
		public int IntroTimeInSeconds;
		public int HideTimeInSeconds;
		public int HideBufferTimeInSeconds;
		public int FindTimeInSeconds;
		public int FindBufferTimeInSeconds;
		public int MaxHiddenItems;
		public int HiderProp;
		public int FinderProp;
	}
}
