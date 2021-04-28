using UnityEngine;
using Disney.Kelowna.Common;
using UnityEngine.UI;

namespace ClubPenguin
{
	internal class ManageIglooPopupController : MonoBehaviour
	{
		public PrefabContentKey IglooPropertiesCardPrefab;
		public PrefabContentKey CreateNewIglooPrefab;
		public RectTransform MemberSlotContainer;
		public RectTransform MemberActiveIglooBackground;
		public RectTransform NonMemberSlotContainer;
		public RectTransform NonMemberActiveIglooBackground;
		public GameObject LapsedMembershipNotification;
		[SerializeField]
		private LayoutGroup slotContainerLayoutGroup;
		[SerializeField]
		private GameObject inputDisabler;
	}
}
