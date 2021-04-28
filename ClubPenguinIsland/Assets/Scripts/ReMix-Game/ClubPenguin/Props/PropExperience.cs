using UnityEngine;

namespace ClubPenguin.Props
{
	public class PropExperience : MonoBehaviour
	{
		public string InstanceId;
		public long OwnerId;
		public bool IsOwnerLocalPlayer;
		public PropDefinition PropDef;
		public float DestroyAfterSec;
	}
}
