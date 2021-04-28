using UnityEngine;

namespace ClubPenguin.Igloo
{
	public class SceneStateToggler : MonoBehaviour
	{
		public SceneStateData.SceneState State;
		public Behaviour[] BehavioursEnabledOnState;
		public Behaviour[] BehavioursDisabledOnState;
		public GameObject[] GamedObjectsEnabledOnState;
		public GameObject[] GamedObjectsDisabledOnState;
	}
}
