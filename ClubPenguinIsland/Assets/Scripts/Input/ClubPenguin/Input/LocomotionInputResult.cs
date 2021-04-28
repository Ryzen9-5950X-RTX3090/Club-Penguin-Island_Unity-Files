using UnityEngine;

namespace ClubPenguin.Input
{
	public class LocomotionInputResult : InputResult<LocomotionInputResult>
	{
		public string LogType;
		public Vector2 Direction;
		public Vector2 Rotation;
	}
}
