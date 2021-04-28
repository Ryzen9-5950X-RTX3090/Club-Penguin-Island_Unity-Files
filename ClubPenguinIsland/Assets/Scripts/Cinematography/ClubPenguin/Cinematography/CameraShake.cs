using UnityEngine;

namespace ClubPenguin.Cinematography
{
	public class CameraShake : MonoBehaviour
	{
		public float ShakeDuration;
		public bool UseCurve;
		public float ShakeSpeed;
		public float ShakeAmount;
		public float ShakeDecay;
		public AnimationCurve ShakeSpeedCurve;
		public AnimationCurve ShakeAmountCurve;
	}
}
