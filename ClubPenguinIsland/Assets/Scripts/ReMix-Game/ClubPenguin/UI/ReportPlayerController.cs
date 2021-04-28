using UnityEngine;
using UnityEngine.UI;

namespace ClubPenguin.UI
{
	public class ReportPlayerController : MonoBehaviour
	{
		public Text DescriptionText;
		public Text NameText;
		public Text ReasonText;
		public Text ConfirmationText;
		public AvatarRenderTextureComponent AvatarRenderTextureComponent;
		public ReportingBansTweener Tweener;
		public DisableableReportPlayerCategoryButton reportIglooButton;
	}
}
