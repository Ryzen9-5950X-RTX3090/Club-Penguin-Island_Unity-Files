using UnityEngine;
using ClubPenguin.UI;
using Disney.Kelowna.Common;
using ClubPenguin.Breadcrumbs;

namespace ClubPenguin.Igloo.UI
{
	public class AbstractIglooScreenController<DecorationDefinitionType, DecorationIdType> : MonoBehaviour
	{
		public PooledCellsScrollRect PooledScrollRect;
		public PrefabContentKey ButtonPrefabKey;
		public int numberOfStaticButtons;
		[SerializeField]
		private string trayButtonPressedId;
		[SerializeField]
		private string trayButtonDisabledId;
		public bool showItemCountsWithZeroCount;
		public bool tintItemsWithZeroCount;
		public StaticBreadcrumbDefinitionKey MenuBreadcrumbType;
		public PersistentBreadcrumbTypeDefinitionKey BreadcrumbType;
	}
}
