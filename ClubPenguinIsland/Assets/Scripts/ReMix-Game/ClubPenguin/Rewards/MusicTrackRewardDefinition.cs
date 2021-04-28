using System;
using ClubPenguin.Core;

namespace ClubPenguin.Rewards
{
	[Serializable]
	public class MusicTrackRewardDefinition : AbstractStaticGameDataRewardDefinition<MusicTrackDefinition>
	{
		public MusicTrackDefinition Definition;
	}
}
