using System;
using ClubPenguin.Core;
using ClubPenguin.Props;

namespace ClubPenguin.Durable
{
	[Serializable]
	public class DurableRewardDefinition : AbstractStaticGameDataRewardDefinition<PropDefinition>
	{
		public PropDefinition Definition;
	}
}
