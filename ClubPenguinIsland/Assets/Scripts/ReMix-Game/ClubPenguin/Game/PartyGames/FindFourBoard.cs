using UnityEngine;
using Disney.Kelowna.Common;

namespace ClubPenguin.Game.PartyGames
{
	public class FindFourBoard : MonoBehaviour
	{
		public PrefabContentKey RedToken;
		public PrefabContentKey BlueToken;
		public PrefabContentKey PlaceTokenEffect;
		public PrefabContentKey WinHighlightEffect;
		public GameObject CameraPosition;
		public GameObject CameraTarget;
		public GameObject StandaloneCameraPosition;
		public GameObject StandaloneCameraTarget;
		public GameObject TokenContainer;
		public GameObject Arrow;
		public GameObject HighlightBar;
		public Material RedMaterial;
		public Material BlueMaterial;
		public Vector2 GridSpacing;
		public float PlacementPositionHeight;
		public float TokenPlaceAnimTime;
		public iTween.EaseType TokenPlaceAnimEaseType;
		public MouseEventsComponent[] ColumnColliders;
		public string MoveTokenSFXTrigger;
		public string Player1TokenDropSFXTrigger;
		public string Player2TokenDropSFXTrigger;
		public string VictorySequenceSFXTrigger;
		public string Player1VictorySequenceEndSFXTrigger;
		public string Player2VictorySequenceEndSFXTrigger;
	}
}
