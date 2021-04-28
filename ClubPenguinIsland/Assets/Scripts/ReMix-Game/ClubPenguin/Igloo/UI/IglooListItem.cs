using ClubPenguin.UI;
using UnityEngine;
using ClubPenguin;

namespace ClubPenguin.Igloo.UI
{
	public class IglooListItem : AbstractPlayerListItem
	{
		public GameObject PopulationBar;
		public GameObject PrivateLabel;
		public GameObject FullLabel;
		public GameObject YouAreHereIcon;
		public CanvasGroup PlayerIconCanvasGroup;
		public TintSelector[] PopulationBarIcons;
		public float DisabledAlpha;
	}
}
