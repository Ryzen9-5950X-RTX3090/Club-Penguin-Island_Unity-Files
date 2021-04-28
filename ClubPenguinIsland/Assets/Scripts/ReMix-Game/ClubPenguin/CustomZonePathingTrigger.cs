using UnityEngine;

namespace ClubPenguin
{
	public class CustomZonePathingTrigger : MonoBehaviour
	{
		public bool DoesOverrideWaypointPosition;
		public Transform OverrideWaypointTarget;
		public bool OverrideInTrigger;
		public GameObject[] OverrideIgnoreTargets;
	}
}
