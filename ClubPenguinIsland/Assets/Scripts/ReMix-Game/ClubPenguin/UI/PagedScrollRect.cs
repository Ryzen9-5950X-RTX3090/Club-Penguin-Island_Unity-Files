using UnityEngine;
using Disney.Kelowna.Common;

namespace ClubPenguin.UI
{
	public class PagedScrollRect : MonoBehaviour
	{
		public RectTransform ContentPanel;
		public RectTransform PageIconContainer;
		public float ItemSpacingPadding;
		public float ScrollTime;
		public float AutoScrollWaitTime;
		public bool LoadItemsDynamically;
		public PrefabContentKey ScrollPageIconKey;
	}
}
