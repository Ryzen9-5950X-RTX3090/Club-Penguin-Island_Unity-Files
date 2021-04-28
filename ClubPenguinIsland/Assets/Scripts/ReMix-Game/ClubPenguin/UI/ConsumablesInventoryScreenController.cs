using ClubPenguin.Props;
using UnityEngine;
using ClubPenguin.Breadcrumbs;

namespace ClubPenguin.UI
{
	public class ConsumablesInventoryScreenController : AbstractProgressionLockedItems<PropDefinition>
	{
		public GameObject EmptyInventoryMessage;
		public StaticBreadcrumbDefinitionKey ConsumableBreadcrumb;
		public StaticBreadcrumbDefinitionKey GearBreadcrumb;
	}
}
