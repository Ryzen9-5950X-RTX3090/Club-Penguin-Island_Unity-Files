using UnityEngine;

namespace ClubPenguin
{
	public class RangeWarning : ProximityBroadcaster
	{
		public GameObject targetObject;
		public Vector3 startScale;
		public float startSpeedSeconds;
		public Vector3 warnScale;
		public float warnSpeedSeconds;
	}
}
