using UnityEngine;
using UnityEngine.UI;

namespace ClubPenguin.Catalog
{
	public class CatalogDailyChallengeScroller : ACatalogController
	{
		public int HorizontalSpacing;
		public float WidthProportionStandalone;
		public int MaxWidthStandalone;
		public GameObject TitlePanel;
		public GridLayoutGroup GridLayout;
		public GameObject ChallengeItem;
		public Transform scrollRectContent;
	}
}
