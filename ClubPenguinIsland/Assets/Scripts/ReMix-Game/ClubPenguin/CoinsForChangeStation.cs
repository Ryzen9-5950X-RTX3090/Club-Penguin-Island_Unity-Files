using UnityEngine;
using Disney.Kelowna.Common;
using ClubPenguin.Cinematography;
using ClubPenguin.UI;

namespace ClubPenguin
{
	public class CoinsForChangeStation : MonoBehaviour
	{
		public PrefabContentKey PopupContentKey;
		public CameraController Camera;
		public Transform CameraTarget;
		public float PopupDelay;
		public CoinsForChangeTracker Tracker;
	}
}
