using UnityEngine;
using UnityEngine.UI;

namespace ClubPenguin.ClothingDesigner.ItemCustomizer
{
	public class BuyTemplatePopup : MonoBehaviour
	{
		[SerializeField]
		private RectTransform popup;
		[SerializeField]
		private Animator popupAnimator;
		[SerializeField]
		private Button buyButton;
		[SerializeField]
		private Button dismissButton;
		[SerializeField]
		private Button infoButton;
	}
}
