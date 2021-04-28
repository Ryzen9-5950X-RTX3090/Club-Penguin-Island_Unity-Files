using UnityEngine;

namespace ClubPenguin.Cinematography.Cameras
{
	public class ChaseCameraTrigger : MonoBehaviour
	{
		public enum ActionType
		{
			EnableChaseCamera = 0,
			DisableChaseCamera = 1,
			SetTrackDirection = 2,
		}

		public ActionType Action;
		public string Tag;
		public float LookatDistance;
	}
}
