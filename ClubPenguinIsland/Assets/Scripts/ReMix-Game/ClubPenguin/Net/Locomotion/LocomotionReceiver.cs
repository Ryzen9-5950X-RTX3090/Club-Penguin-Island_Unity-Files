using UnityEngine;

namespace ClubPenguin.Net.Locomotion
{
	public class LocomotionReceiver : MonoBehaviour
	{
		public bool Allow3DMovement;
		public long MaxQueueTimeMS;
		public long WarningQueueTimeMS;
		public float SnapThreshold;
		public float SnapHeightThreshold;
		public long InterpolationDelay;
		public long MaxExtrapolationTime;
	}
}
