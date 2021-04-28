using System;
using ClubPenguin.Core;
using ClubPenguin.MiniGames.Fishing;

namespace ClubPenguin.Adventure
{
	[Serializable]
	public class FishingSuccessWatcher : TaskWatcher
	{
		public LootTableRewardDefinition[] loot;
	}
}
