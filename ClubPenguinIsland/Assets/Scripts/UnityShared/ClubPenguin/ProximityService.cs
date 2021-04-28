using UnityEngine;

namespace ClubPenguin
{
	public class ProximityService : MonoBehaviour
	{
		public enum UpdateModes
		{
			FixedUpdate = 0,
			Update = 1,
			LateUpdate = 2,
		}

		public int UpdateRateDivisor;
		public UpdateModes UpdateMode;
	}
}
