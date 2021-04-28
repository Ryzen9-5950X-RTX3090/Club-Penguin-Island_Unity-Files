using System;
using ClubPenguin.Core.StaticGameData;
using Disney.Kelowna.Common;

namespace ClubPenguin.Rewards
{
	[Serializable]
	public class RewardThemeDefinition : StaticGameDataDefinition
	{
		public int Id;
		public string ShortThemeToken;
		public string LongThemeToken;
		public SpriteContentKey ThemeIconContentKey;
	}
}
