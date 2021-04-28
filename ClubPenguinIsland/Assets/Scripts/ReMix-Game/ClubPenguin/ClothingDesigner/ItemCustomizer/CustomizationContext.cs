using UnityEngine;

namespace ClubPenguin.ClothingDesigner.ItemCustomizer
{
	public class CustomizationContext : MonoBehaviour
	{
		[SerializeField]
		private TemplateSelectionController templateSelectionController;
		[SerializeField]
		private TemplateChosenController templateChosenController;
		[SerializeField]
		private PropertyCustomizationController propertyCustomizationController;
		[SerializeField]
		private EquipmentCustomizationController equipmentCustomizationController;
		[SerializeField]
		private CustomizerMode mode;
	}
}
