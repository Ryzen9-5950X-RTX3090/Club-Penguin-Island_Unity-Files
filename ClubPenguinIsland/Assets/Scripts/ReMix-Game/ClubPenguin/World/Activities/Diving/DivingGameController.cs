using UnityEngine;

namespace ClubPenguin.World.Activities.Diving
{
	public class DivingGameController : MonoBehaviour
	{
		public enum DivingState
		{
			Invalid = 0,
			HoldingBreath = 1,
			PlentifulAir = 2,
		}

		public enum BubbleState
		{
			None = 0,
			Good = 1,
			TransitionToGood = 2,
			Warning = 3,
			TransitionToWarning = 4,
			Danger = 5,
			TransitionToDanger = 6,
			Hidden = 7,
			TransitionToHidden = 8,
			TransitionToPlentifulAir = 9,
		}

		public float AirSupply;
		public float DegradeRate;
		public float AirThreshold;
		public float Depth;
		public DivingState State;
		public BubbleState bubbleState;
	}
}
