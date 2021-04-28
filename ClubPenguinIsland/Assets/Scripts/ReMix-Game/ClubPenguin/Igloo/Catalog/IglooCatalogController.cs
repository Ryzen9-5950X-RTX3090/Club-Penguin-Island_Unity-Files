using UnityEngine;
using ClubPenguin.UI;
using UnityEngine.UI;
using ClubPenguin.Core;
using ClubPenguin.Igloo.UI;

namespace ClubPenguin.Igloo.Catalog
{
	public class IglooCatalogController : MonoBehaviour
	{
		public string CategoryTitleToken;
		public string CategoryAllButtonToken;
		public string CategoryStructuresButtonToken;
		public string ThemeTitleToken;
		public string ThemeAllButtonToken;
		public VerticalGridPooledScrollRect PooledScrollRect;
		[SerializeField]
		private HorizontalLayoutGroup subfilterLayoutGroup;
		[SerializeField]
		private ScrollRect subfilterScrollRect;
		[SerializeField]
		private ScrollRect catalogScrollRect;
		[SerializeField]
		private Transform subfilterButtonParent;
		[SerializeField]
		private Transform itemContainer;
		[SerializeField]
		private Color iconBackgroundColor;
		[SerializeField]
		private GroupDefinition decorationExclusionGroup;
		[SerializeField]
		private GroupDefinitionKey iglooThemeParentGroup;
		[SerializeField]
		private DecorationCategoryButton themeFilterButton;
		[SerializeField]
		private DecorationCategoryButton categoryFilterButton;
		[SerializeField]
		private GameObject loadPanel;
	}
}
