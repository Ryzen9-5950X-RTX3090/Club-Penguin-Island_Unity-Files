using UnityEngine;

namespace ClubPenguin
{
	public class FreeCameraController : MonoBehaviour
	{
		public Transform Target;
		public Camera Camera;
		public float XSensitivity;
		public float YSensitivity;
		public float ZSensitivity;
		public float FOVSensitivity;
		public float XSpeed;
		public float YSpeed;
		public float ZSpeed;
		public bool WorldRelativeZMotion;
		public float RotationModifierFOV;
		public float XSpeedModifierFOV;
		public float YSpeedModifierFOV;
		public float ZSpeedModifierFOV;
	}
}
