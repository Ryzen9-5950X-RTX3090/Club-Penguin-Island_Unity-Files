using UnityEngine;
using UnityEngine.UI;
using ClubPenguin;

namespace ClubPenguin.UI
{
	public class DisneyStoreFranchiseItem : MonoBehaviour
	{
		public Text TitleText;
		public DiscountableItemPriceTag PriceTag;
		public RawImage IconImage;
		public GameObject MemberLockPanel;
		public SpriteSelector PriceTagSpriteSelector;
		public GameObject OwnedPanel;
		public MaterialSelector MatSelector;
	}
}
