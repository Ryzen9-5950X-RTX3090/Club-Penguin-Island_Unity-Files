using UnityEngine;
using Disney.Kelowna.Common;

namespace ClubPenguin.UI
{
	public class ExchangeScreenInventory : MonoBehaviour
	{
		public PrefabContentKey InventoryItemPrefabKey;
		public PrefabContentKey InventoryItemIconPrefabKey;
		public RectTransform ScrollContent;
		public GameObject EmptyPanel;
		public float ItemAnimDelay;
		public float ItemAnimTime;
		public float RowScrollTime;
		public int ItemToTubeVariance;
	}
}
