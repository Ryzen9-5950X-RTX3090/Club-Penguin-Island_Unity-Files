using System;
using ClubPenguin.Core.StaticGameData;
using ClubPenguin.Adventure;
using System.Collections.Generic;

namespace ClubPenguin.Progression
{
	[Serializable]
	public class ProgressionMascotLevelXPDefinition : StaticGameDataDefinition
	{
		public MascotDefinition Mascot;
		public List<int> Levels;
	}
}
