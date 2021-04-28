using UnityEngine;
using ClubPenguin.UI;
using UnityEngine.UI;
using ClubPenguin;

namespace ClubPenguin.CellPhone
{
	public class CellPhoneActivityScreenDailySpinWidget : MonoBehaviour
	{
		public DailySpinWheel DailySpinWheel;
		public GameObject ChestLevelContainer;
		public Text ChestLevelNameText;
		public Text ChestLevelValueText;
		public GameObject SpinTimerContainer;
		public Text SpinTimerHours;
		public Text SpinTimerMinutes;
		public SpriteSelector ChestSpriteSelector;
		public GameObject TickPanel;
		public GameObject SpinButton;
		public Text SpinButtonText;
		public DailySpinRewardScreen RewardScreen;
		public DailySpinRewardPopup RewardPopup;
		public GameObject SpinScreen;
		public Text TitleText;
		public float CoinXpRewardDelay;
		public float RewardShowDelay;
		public float ShowChestDelay;
		public float MoveToBottomDelay;
	}
}
