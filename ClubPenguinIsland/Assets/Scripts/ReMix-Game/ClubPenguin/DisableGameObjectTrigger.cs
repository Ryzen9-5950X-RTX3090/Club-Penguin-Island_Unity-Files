using UnityEngine;

namespace ClubPenguin
{
	public class DisableGameObjectTrigger : MonoBehaviour
	{
		public enum DisableState
		{
			None = 0,
			Disable = 1,
			Enable = 2,
		}

		public GameObject[] GameObjects;
		public DisableState OnEnterState;
		public DisableState OnExitState;
		public DisableState DefaultState;
	}
}
