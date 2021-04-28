using UnityEngine;
using ClubPenguin.Rewards;

namespace ClubPenguin.UI
{
	public class MarketplaceEventController : MonoBehaviour
	{
		public MarketplaceEventRowItem ExistingRowItem;
		public GameObject ItemPanelContainer;
		public Material ItemIconImageMaterial;
		public Color ItemIconBgColor;
		public Color ItemIconPenguinColor;
		public GameObject ItemsBlocker;
		public string EventNameForBI;
		public ClaimableRewardDefinition[] EventItems;
	}
}
