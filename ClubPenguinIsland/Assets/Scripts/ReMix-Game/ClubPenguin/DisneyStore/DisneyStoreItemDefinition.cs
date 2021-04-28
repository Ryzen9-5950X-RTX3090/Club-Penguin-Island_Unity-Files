using System;
using UnityEngine;
using ClubPenguin.Rewards;
using ClubPenguin.Core;
using Disney.Kelowna.Common;

namespace ClubPenguin.DisneyStore
{
	[Serializable]
	public class DisneyStoreItemDefinition : ScriptableObject
	{
		public int Id;
		public RewardThemeDefinition ThemeDefinition;
		public int Cost;
		public bool IsMemberOnly;
		public RewardDefinition Reward;
		public string DescriptionToken;
		public string TitleToken;
		public SpriteContentKey Icon;
	}
}
