using UnityEngine;

namespace ClubPenguin
{
	public class MovementRotation : ProximityBroadcaster
	{
		public Transform rotationCenter;
		public float secondsPerRotation;
		public bool doNotRotateObject;
		public bool isControlledByParent;
		public bool isActive;
	}
}
