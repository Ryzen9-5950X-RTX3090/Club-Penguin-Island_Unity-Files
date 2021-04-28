using UnityEngine;

namespace ClubPenguin.Cinematography
{
	public class Director : MonoBehaviour
	{
		public Transform DefaultTarget;
		public BaseCamera ActiveCamera;
		public Transform GameplayCameraLeaf;
		public Transform CinematicCameraLeaf;
		public Transform ChaseCameraLeaf;
		public bool IsStartUpComplete;
	}
}
