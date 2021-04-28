using ClubPenguin;
using ClubPenguin.Core;

namespace ClubPenguin.Collectibles
{
	public class Collectible : ProximityBroadcaster
	{
		public string AudioEvent;
		public string Tag;
		public RewardDefinition RewardDef;
		public string QuestEventName;
	}
}
