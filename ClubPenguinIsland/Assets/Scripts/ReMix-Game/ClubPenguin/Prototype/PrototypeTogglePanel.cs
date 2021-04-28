using UnityEngine;

namespace ClubPenguin.Prototype
{
	public class PrototypeTogglePanel : MonoBehaviour
	{
		public enum ToggleFunctionalityEnum
		{
			TOGGLE = 0,
			TURN_ALL_OFF = 1,
			TURN_ALL_ON = 2,
		}

		public ToggleFunctionalityEnum Functionality;
		public GameObject[] GameObjectsToToggle;
	}
}
