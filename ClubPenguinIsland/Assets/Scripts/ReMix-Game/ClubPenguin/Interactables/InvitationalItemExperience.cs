using UnityEngine;
using Disney.Kelowna.Common;
using ClubPenguin.UI;
using ClubPenguin.Cinematography;

namespace ClubPenguin.Interactables
{
	public class InvitationalItemExperience : MonoBehaviour
	{
		public SpriteContentKey IndicatorItemImageContentKey;
		[SerializeField]
		private string ItemTargetBoneName;
		[SerializeField]
		private PrefabContentKey ItemContentKey;
		[SerializeField]
		private int OfferAnimIndex;
		[SerializeField]
		private InputButtonGroupContentKey ControlsScreenDefinitionContentKey;
		[SerializeField]
		private InputButtonGroupContentKey SwimControlsScreenDefinitionContentKey;
		[SerializeField]
		private InputButtonGroupContentKey SitControlsScreenDefinitionContentKey;
		[SerializeField]
		private InputButtonGroupContentKey SitSwimControlsScreenDefinitionContentKey;
		[SerializeField]
		private InputButtonGroupContentKey DivingControlsScreenDefinitionContentKey;
		[SerializeField]
		private PrefabContentKey IndicatorContentKey;
		[SerializeField]
		private bool AdditionalItemTakingCoolDown;
		[SerializeField]
		private float AdditionalItemTakingCoolDownTimeInSecs;
		[SerializeField]
		private string i18nConfirmationTitleText;
		[SerializeField]
		private string i18nConfirmationBodyText;
		[SerializeField]
		private CameraController CustomCamera;
	}
}
