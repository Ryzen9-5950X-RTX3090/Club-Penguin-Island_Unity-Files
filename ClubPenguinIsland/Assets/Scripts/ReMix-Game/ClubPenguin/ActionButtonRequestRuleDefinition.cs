using System;
using ClubPenguin.Core.StaticGameData;

namespace ClubPenguin
{
	[Serializable]
	public class ActionButtonRequestRuleDefinition : StaticGameDataDefinition
	{
		public enum Proximity
		{
			UsesProximity = 0,
			IgnoresProximity = 1,
		}

		public string Category;
		public int Priority;
		public Proximity ProximityRule;
	}
}
