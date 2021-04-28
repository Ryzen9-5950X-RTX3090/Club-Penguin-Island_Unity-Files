using UnityEngine;

namespace ClubPenguin.Cinematography
{
	public class LookAheadFramer : Framer
	{
		public float MaxSpeed;
		public float Multiplier;
		public Vector3 Offset;
		public Vector3 OffsetWithKeyboard;
		public float OffsetBlendTime;
		public AnimationCurve OffsetBlendCurve;
	}
}
