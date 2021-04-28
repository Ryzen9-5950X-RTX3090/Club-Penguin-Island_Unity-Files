using System;
using ClubPenguin.PartyGames;

namespace ClubPenguin.Game.PartyGames
{
	[Serializable]
	public class FindFourDefinition : PartyGameDataDefinition
	{
		public int IntroTimeInSeconds;
		public int OutroTimeInSeconds;
		public int TurnTimeInSeconds;
		public int ChipPlaceTimeInSeconds;
		public int PlayerProp;
		public int SequenceCountToWin;
		public int GameBoardWidth;
		public int GameBoardHeight;
		public int DefaultColumn;
	}
}
