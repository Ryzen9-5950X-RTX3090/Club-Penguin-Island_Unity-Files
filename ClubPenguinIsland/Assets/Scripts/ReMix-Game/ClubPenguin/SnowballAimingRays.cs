using UnityEngine;

namespace ClubPenguin
{
	public class SnowballAimingRays : MonoBehaviour
	{
		public enum AimingType
		{
			None = 0,
			TrailMarker = 1,
			ParticleMarkers = 2,
		}

		public AimingType aimingType;
		public Transform trailTransformPrefab;
		public ParticleSystem particleMarkerPrefab;
	}
}
