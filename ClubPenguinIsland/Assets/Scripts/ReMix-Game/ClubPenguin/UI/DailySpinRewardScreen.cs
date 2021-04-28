using UnityEngine;
using UnityEngine.UI;
using ClubPenguin;

namespace ClubPenguin.UI
{
	public class DailySpinRewardScreen : MonoBehaviour
	{
		public Text HeaderText;
		public Text NewChestNameText;
		public GameObject ChestPanel;
		public GameObject RewardPanel;
		public GameObject RewardContainer;
		public GameObject NewChestPanel;
		public SpriteSelector ChestSpriteSelector;
		public SpriteSelector NewChestSpriteSelector;
		public float CloseTime;
		public float ExtraItemCellSize;
	}
}
