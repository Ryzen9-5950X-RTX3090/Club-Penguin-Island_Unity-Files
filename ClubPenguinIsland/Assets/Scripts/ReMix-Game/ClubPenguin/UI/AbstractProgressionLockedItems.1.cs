using UnityEngine;
using ClubPenguin.Progression;
using Disney.Kelowna.Common;

namespace ClubPenguin.UI
{
	public class AbstractProgressionLockedItems<T> : MonoBehaviour
	{
		public RectTransform ScrollContentParentTransform;
		public ProgressionUnlockCategory UnlockCategory;
		public PrefabContentKey ItemContentKey;
		public PrefabContentKey LockedItemsContentKey;
		public float LockedSpacing;
		public bool ShowUnlockedBGs;
		public int UnlockedItemsGroupCount;
		public bool GroupAllUnlockedItems;
		public int UnlockedArrayIncrement;
		public float GroupSpacing;
		public float CombinedGroupSpacing;
	}
}
