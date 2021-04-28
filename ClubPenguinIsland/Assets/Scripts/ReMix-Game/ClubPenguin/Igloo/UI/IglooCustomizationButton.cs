using ClubPenguin.ClothingDesigner.ItemCustomizer;
using UnityEngine;
using ClubPenguin.UI;
using UnityEngine.UI;
using ClubPenguin;
using Fabric;

namespace ClubPenguin.Igloo.UI
{
	public class IglooCustomizationButton : CustomizationButton
	{
		public Animator SelectedAnimator;
		[SerializeField]
		private float dragTolerance;
		[SerializeField]
		private GameObject progressionBadge;
		[SerializeField]
		private GameObject mascotBadges;
		[SerializeField]
		private GameObject memberlockBadge;
		[SerializeField]
		private GameObject sizeLockBadge;
		[SerializeField]
		private MaterialSelector materialSelector;
		[SerializeField]
		private GameObject itemCountPanel;
		[SerializeField]
		private Text itemCountText;
		[SerializeField]
		private GameObject SizeIconSelector;
		[SerializeField]
		private SpriteSelector sizeIconSpriteSelector;
		[SerializeField]
		private GameObject itemContentContainer;
		[SerializeField]
		private GameObject catalogButtonContainer;
		[SerializeField]
		private string dragEventName;
		[SerializeField]
		private EventAction dragEventType;
		[SerializeField]
		private string dragEndEventName;
		[SerializeField]
		private EventAction dragEndEventType;
	}
}
