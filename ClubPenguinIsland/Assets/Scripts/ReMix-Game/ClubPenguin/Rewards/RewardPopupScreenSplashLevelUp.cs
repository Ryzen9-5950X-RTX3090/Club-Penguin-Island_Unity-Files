using System;
using UnityEngine.UI;
using UnityEngine;

namespace ClubPenguin.Rewards
{
	public class RewardPopupScreenSplashLevelUp : RewardPopupScreen
	{
		[Serializable]
		public class MascotLevelTextMap
		{
			public string MascotName;
			public Text LevelText;
		}

		public Animator LevelUpStarsAnimator;
		public Text TitleText;
		public Text CurrentMascotLevelText;
		public Text PrevMascotLevelText;
		public Text CurrentOverallLevelText;
		public Text PrevOverallLevelText;
		public MascotLevelTextMap[] MascotLevelText;
	}
}
