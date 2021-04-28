using UnityEngine;

namespace ClubPenguin.Props
{
	public class PropSpawnOnUse : MonoBehaviour
	{
		public PropExperience PrefabToSpawn;
		public bool IsInstance;
		public bool HideInitially;
		public bool ParentToUser;
		public bool ApplyUserForwardVect;
	}
}
