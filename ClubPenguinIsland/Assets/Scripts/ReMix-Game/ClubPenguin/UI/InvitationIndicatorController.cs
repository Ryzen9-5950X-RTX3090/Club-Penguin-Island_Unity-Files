using UnityEngine;
using UnityEngine.UI;

namespace ClubPenguin.UI
{
	public class InvitationIndicatorController : MonoBehaviour
	{
		[SerializeField]
		private Text AvailableQuantityText;
		[SerializeField]
		private RadialProgressBar AvailableQuantityRadial;
		[SerializeField]
		private Image ItemImage;
		public Animator IndicatorAnimator;
	}
}
