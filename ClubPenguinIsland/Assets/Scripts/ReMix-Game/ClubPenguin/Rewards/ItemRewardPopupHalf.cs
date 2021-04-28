using ClubPenguin.UI;
using UnityEngine.UI;
using ClubPenguin.Input;
using UnityEngine;
using ClubPenguin;

namespace ClubPenguin.Rewards
{
	public class ItemRewardPopupHalf : AnimatedPopup
	{
		public Text ItemNameText;
		public Text ClaimText;
		public ButtonClickListener CollectButton;
		public GameObject CoinOnlyContainer;
		public Text CoinOnlyAmountText;
		public GameObject XPOnlyContainer;
		public GameObject CoinAndXPContainer;
		public Text CoinAndXP_CoinAmountText;
		public SpriteSelector CoinAndXP_XPSpriteSelector;
		public Text CoinAndXP_XPText;
		public Image ItemIcon;
	}
}
