using UnityEngine;

namespace ClubPenguin.Props
{
	public class PropDisableControls : MonoBehaviour
	{
		public enum DisableTrigger
		{
			Start = 0,
			Use = 1,
		}

		public DisableTrigger Trigger;
		public bool DisableJoystick;
		public bool HideJoystick;
		public bool DisableJump;
		public bool DisableTube;
		public bool DisableSnowball;
		public bool DisableMainNav;
	}
}
