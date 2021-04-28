using UnityEngine;
using ClubPenguin.Input;
using UnityEngine.UI;
using ClubPenguin;

namespace ClubPenguin.WorldMap
{
	public class WorldMapZonePopup : MonoBehaviour
	{
		[SerializeField]
		private ButtonClickListener btnZonePromptYes;
		[SerializeField]
		private ButtonClickListener btnZonePromptNo;
		public Text ZoneText;
		public RectTransform Arrow;
		public GameObject PopulationPanel;
		public TintSelector[] PopulationBarIcons;
		public float ScreenEdgeBuffer;
		public GameObject ZonePanel;
		public GameObject IglooPanel;
	}
}
