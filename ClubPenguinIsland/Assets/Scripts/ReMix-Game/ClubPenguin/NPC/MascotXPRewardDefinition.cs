using System;
using ClubPenguin.Core;
using ClubPenguin.Adventure;

namespace ClubPenguin.NPC
{
	[Serializable]
	public class MascotXPRewardDefinition : AbstractStaticGameDataRewardDefinition<MascotDefinition>
	{
		public MascotDefinition Mascot;
		public int XP;
	}
}
