using UnityEngine;
using ClubPenguin.UI;
using ClubPenguin.ClothingDesigner;

namespace ClubPenguin.ClothingDesigner.Inventory
{
	public class EquipmentListController : MonoBehaviour
	{
		[SerializeField]
		private GameObject noInventoryPanel;
		[SerializeField]
		private EditableItemController editableItemController;
		[SerializeField]
		private CategoryManager categoryManager;
	}
}
