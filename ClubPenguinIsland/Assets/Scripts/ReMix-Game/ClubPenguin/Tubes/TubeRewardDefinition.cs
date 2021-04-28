using System;
using ClubPenguin.Core;

namespace ClubPenguin.Tubes
{
	[Serializable]
	public class TubeRewardDefinition : AbstractStaticGameDataRewardDefinition<TubeDefinition>
	{
		public TubeDefinition Definition;
	}
}
