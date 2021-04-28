using UnityEngine;
using ClubPenguin.Breadcrumbs;

namespace ClubPenguin.ClothingDesigner.Inventory
{
	public class InventoryContext : MonoBehaviour
	{
		public StaticBreadcrumbDefinitionKey Breadcrumb;
		[SerializeField]
		private EquipmentListController equipmentListController;
	}
}
