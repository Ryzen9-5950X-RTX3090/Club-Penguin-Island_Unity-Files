using UnityEngine;
using UnityEngine.UI;
using ClubPenguin;

namespace ClubPenguin.ClothingDesigner.ItemCustomizer
{
	public class TemplateChosenController : MonoBehaviour
	{
		[SerializeField]
		private Image templateImage;
		[SerializeField]
		private Text templateTitle;
		[SerializeField]
		private Text templateDescription;
		[SerializeField]
		private Text templateCost;
		[SerializeField]
		private GameObject selectButton;
		[SerializeField]
		private GameObject notEnoughCoins;
		[SerializeField]
		private TintSelector tintSelector;
	}
}
