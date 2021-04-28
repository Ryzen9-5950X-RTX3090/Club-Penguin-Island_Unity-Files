using UnityEngine;
using ClubPenguin.Input;

namespace ClubPenguin.Rewards
{
	public class RewardPopupController : MonoBehaviour
	{
		public RectTransform ScreenParentTransform;
		public RewardPopupBG PopupBG;
		public Animator RewardPopupAnimator;
		public Animator ParachuteAnimator;
		public Transform ChestParent;
		public bool isChestLanded;
		public RewardPopupChest RewardChest;
		public string PopupTitle;
		public ButtonClickListener HitBox;
	}
}
