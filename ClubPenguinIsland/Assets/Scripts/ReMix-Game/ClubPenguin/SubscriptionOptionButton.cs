using UnityEngine;
using UnityEngine.UI;

namespace ClubPenguin
{
	public class SubscriptionOptionButton : MonoBehaviour
	{
		public bool IsSelected;
		public GameObject SelectedOutline;
		public Color SelectedTextColor;
		public Color DefaultTextColor;
		public GameObject SelectedCheck;
		public Text PlanTitle;
		public Text TrialText;
		public Text PriceText;
		public Text DurationText;
		public Text RecurringText;
		public Text CurrencyCode;
	}
}
