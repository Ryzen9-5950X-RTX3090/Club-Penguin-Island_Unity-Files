using UnityEngine;

namespace ClubPenguin.MiniGames.Fishing
{
	public class FishingGameConfig : ScriptableObject
	{
		public float CastingLineDelay;
		public float CameraZoomDelay;
		public float PrizeDropDelay;
		public float CelebrateDelay;
		public float TryAgainPopupShowTime;
		public float HoldPrizeEscapedDelay;
		public float HoldPrizeCaughtDelay;
		public float ReelingAnimationTime;
		public Vector3 PlayerRotationTowardsWater;
		public Vector3 PrizeDropOffset;
		public Vector3 BobberLocationInWater;
		public float patternRadius;
		public float baseFishSpeed;
		public float spherecastRadius;
		public float spherecastRadiusScare;
		public float spherecastDepth;
		public Vector2 reelExtremes;
		public float perReelStrength;
		public float baseFishReelStrength;
		public FishingGamePatternConfig[] patterns;
		public float fishHideDuration;
		public float fishScaleDuration;
		public float fishScaleCommon;
		public float fishScaleRare;
		public float fishScaleLegendary;
		public float fishReelStrengthCommon;
		public float fishReelStrengthRare;
		public float fishReelStrengthLegendary;
	}
}
