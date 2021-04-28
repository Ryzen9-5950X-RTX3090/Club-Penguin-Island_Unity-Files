using ClubPenguin.UI;
using ClubPenguin.Input;
using UnityEngine;
using UnityEngine.UI;

namespace ClubPenguin.Rewards
{
	public class ItemRewardPopup : AnimatedPopup
	{
		public ButtonClickListener TakeItemButton;
		public Transform BackgroundContainer;
		public Text ItemNameText;
		public RectTransform ItemPanel;
	}
}
