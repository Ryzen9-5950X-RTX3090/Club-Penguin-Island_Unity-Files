using UnityEngine;

namespace ClubPenguin.Actions
{
	public class WaitForVelocityAction : Action
	{
		public Vector3 Min;
		public Vector3 Max;
		public float MinMag;
		public float MaxMag;
		public bool IgnoreX;
		public bool IgnoreY;
		public bool IgnoreZ;
		public bool IgnoreMinMag;
		public bool IgnoreMaxMag;
	}
}
