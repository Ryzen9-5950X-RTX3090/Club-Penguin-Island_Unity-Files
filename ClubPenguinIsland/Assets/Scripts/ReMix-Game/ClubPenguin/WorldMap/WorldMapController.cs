using UnityEngine;
using ClubPenguin.Input;

namespace ClubPenguin.WorldMap
{
	public class WorldMapController : MonoBehaviour
	{
		public ButtonClickListener BtnClose;
		public GameObject YouAreHereIcon;
		public GameObject FullScreenButton;
		public WorldMapZonePopup ZonePopup;
		[SerializeField]
		private WorldMapZoneButton iglooZoneButton;
	}
}
