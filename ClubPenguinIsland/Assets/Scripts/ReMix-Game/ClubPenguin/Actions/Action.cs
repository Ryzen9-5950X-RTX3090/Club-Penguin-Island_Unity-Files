using UnityEngine;

namespace ClubPenguin.Actions
{
	public class Action : MonoBehaviour
	{
		public enum TargetType
		{
			TriggeringAvatar = 0,
			NearestAvatar = 1,
			NearestPet = 2,
			SceneObject = 3,
		}

		public string Name;
		public bool EndAllOnExit;
		public bool AbortOnUserInput;
		public TargetType Target;
		public GameObject CustomTarget;
		public GameObject Owner;
		public int Id;
		public int ParentId;
		public int ParentIdOnFalse;
		public int InterruptedBy;
	}
}
