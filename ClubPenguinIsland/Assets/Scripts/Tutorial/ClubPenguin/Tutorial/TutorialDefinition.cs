using System;
using ClubPenguin.Core.StaticGameData;
using Disney.Kelowna.Common;

namespace ClubPenguin.Tutorial
{
	[Serializable]
	public class TutorialDefinition : StaticGameDataDefinition
	{
		public int Id;
		public TutorialDefinition[] TutorialRequirements;
		public bool IsMemberOnly;
		public int MinimumPenguinAge;
		public bool IsNotAutoComplete;
		public FSMContentKey FsmContentKey;
	}
}
