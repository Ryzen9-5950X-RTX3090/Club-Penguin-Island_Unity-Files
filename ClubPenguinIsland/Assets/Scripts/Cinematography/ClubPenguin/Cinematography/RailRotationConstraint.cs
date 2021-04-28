using UnityEngine;

namespace ClubPenguin.Cinematography
{
	public class RailRotationConstraint : Constraint
	{
		public enum LockedValue
		{
			Locked = 0,
			Unlocked = 1,
		}

		public LockedValue LockXAxis;
		public LockedValue LockYAxis;
		public LockedValue LockZAxis;
		public Vector3 LockedAxisValues;
	}
}
