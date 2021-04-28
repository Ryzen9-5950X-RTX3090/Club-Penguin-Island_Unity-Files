using UnityEngine;
using UnityEngine.UI;
using ClubPenguin.UI;

namespace ClubPenguin.Rewards
{
	public class RewardPopupScreenItems : RewardPopupScreen
	{
		public Transform ItemParentTransform;
		public Text RewardCategoryText;
		public GridLayoutScaler ItemGridScaler;
		public GameObject MembersOnlyIndicator;
		public GameObject ItemsBG;
		public GameObject UnlockedText;
	}
}
