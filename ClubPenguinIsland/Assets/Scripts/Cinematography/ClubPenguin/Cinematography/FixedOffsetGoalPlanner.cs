using UnityEngine;

namespace ClubPenguin.Cinematography
{
	public class FixedOffsetGoalPlanner : GoalPlanner
	{
		public enum Scopes
		{
			Global = 0,
			Local = 1,
			FocusLocal = 2,
		}

		public Vector3 Offset;
		public Scopes Scope;
	}
}
