using UnityEngine;
using ClubPenguin.Cinematography;

namespace ClubPenguin.Igloo
{
	internal class IglooEditCameraTargetController : MonoBehaviour
	{
		public bool CenterCameraOnSelect;
		public GameObject EditCameraTarget;
		public Collider BoundsForCameraTarget;
		public CameraController PreviewCameraControllerRail;
		public CameraController EditCameraControllerRail;
		public CameraController StructureCameraControllerRail;
		public CameraController LightingCameraControllerRail;
		public float SwipeSpeedModifier;
		public float MinCameraTargetDistanceOnNewItem;
		public float MaxZoomAffect;
		public float MinZoomAffect;
	}
}
