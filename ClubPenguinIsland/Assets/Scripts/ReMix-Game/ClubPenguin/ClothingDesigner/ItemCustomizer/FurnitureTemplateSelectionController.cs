using UnityEngine;

namespace ClubPenguin.ClothingDesigner.ItemCustomizer
{
	public class FurnitureTemplateSelectionController : TemplateSelectionController
	{
		[SerializeField]
		private RectTransform IconsContent;
		[SerializeField]
		private GameObject TemplateNavContentPanel;
		[SerializeField]
		private FurnitureTemplateCategory CurrentCategory;
	}
}
