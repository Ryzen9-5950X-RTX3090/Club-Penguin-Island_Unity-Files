using UnityEngine;
using UnityEngine.UI;
using ClubPenguin.Breadcrumbs;

namespace ClubPenguin.CellPhone
{
	public class CellPhoneActivityScreenController : MonoBehaviour
	{
		public Text TimeText;
		public Text AmPmText;
		public Transform WidgetParentTransform;
		public StaticBreadcrumbDefinitionKey DailyChallengeBreadcrumb;
		public StaticBreadcrumbDefinitionKey NewsfeedBreadcrumb;
	}
}
