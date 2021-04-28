using UnityEngine;
using UnityEngine.UI;

namespace ClubPenguin
{
	public class ControlsABSwitcher : MonoBehaviour
	{
		public enum LocomotionOptions
		{
			Joystick1 = 0,
			Joystick2 = 1,
			Touchpad = 2,
		}

		public enum ActionOptions
		{
			Circle = 0,
			ThreeButtons = 1,
			HalfCircle = 2,
			Buttons = 3,
		}

		public enum ControlSlots
		{
			Left = 0,
			Right = 1,
		}

		public LocomotionOptions LocomotionOption;
		public ActionOptions ActionOption;
		public ControlSlots ControlSlot;
		public Text Label;
	}
}
