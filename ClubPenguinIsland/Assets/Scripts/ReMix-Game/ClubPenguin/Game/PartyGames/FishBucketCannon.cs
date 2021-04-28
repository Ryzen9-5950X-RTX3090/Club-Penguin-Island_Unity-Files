using UnityEngine;

namespace ClubPenguin.Game.PartyGames
{
	public class FishBucketCannon : MonoBehaviour
	{
		public float CannonRotationTimeInSeconds;
		public iTween.EaseType CannonRotationEaseType;
		public Transform ShotOrigin;
		public float CannonShotTimeInSeconds;
		public Animator CannonAnimator;
		public Transform RotationTransform;
		public float CannonShotTimeRandomOffsetInSeconds;
		public GameObject CameraPosition;
		public GameObject CameraTarget;
		public GameObject StandaloneCameraPosition;
		public GameObject StandaloneCameraTarget;
		public string CannonTurnSFXTrigger;
		public string CannonShootFishSFXTrigger;
		public string CannonShootSquidSFXTrigger;
	}
}
