using UnityEngine;

namespace ClubPenguin
{
	public class ShakeCollectible : MonoBehaviour
	{
		public float ScaleAmount;
		public iTween.EaseType EaseType;
		public float TweenTime;
		public GameObject ParticlesActivated;
		public Vector3 ParticlesOffset;
		public Color spawnPointColor;
	}
}
