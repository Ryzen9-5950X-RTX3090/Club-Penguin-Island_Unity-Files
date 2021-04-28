using UnityEngine;

namespace ClubPenguin.Actions
{
	public class PlayAnimAction : Action
	{
		public string StateName;
		public int LayerIndex;
		public float Duration;
		public float NormStartTime;
		public bool AnimateTranslation;
		public bool AnimateRotation;
		public bool IgnoreCollisions;
		public bool MakeAnimRelative;
		public Transform IdealStartTransform;
		public float WarpStartTime;
		public float WarpEndTime;
	}
}
