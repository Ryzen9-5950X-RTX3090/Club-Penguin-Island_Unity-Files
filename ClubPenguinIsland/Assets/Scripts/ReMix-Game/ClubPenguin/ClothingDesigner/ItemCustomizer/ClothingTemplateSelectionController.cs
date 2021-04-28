using ClubPenguin.UI;
using UnityEngine;
using ClubPenguin.ClothingDesigner;
using ClubPenguin.Breadcrumbs;

namespace ClubPenguin.ClothingDesigner.ItemCustomizer
{
	public class ClothingTemplateSelectionController : TemplateSelectionController
	{
		[SerializeField]
		private PooledCellsScrollRect pooledScrollRect;
		[SerializeField]
		private TemplateIcon templateIconPrefab;
		[SerializeField]
		private CategoryManager categoryManager;
		[SerializeField]
		private GameObject loadingOverlay;
		public PersistentBreadcrumbTypeDefinitionKey BreadcrumbType;
	}
}
