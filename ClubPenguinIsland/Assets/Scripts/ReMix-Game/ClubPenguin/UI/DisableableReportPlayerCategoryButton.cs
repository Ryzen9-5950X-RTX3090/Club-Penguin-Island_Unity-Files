using UnityEngine.UI;
using UnityEngine;

namespace ClubPenguin.UI
{
	public class DisableableReportPlayerCategoryButton : ReportPlayerCategoryButton
	{
		[SerializeField]
		private Image backgroundEnabled;
		[SerializeField]
		private Image backgroundDisabled;
		[SerializeField]
		private Color disabledTextColor;
	}
}
