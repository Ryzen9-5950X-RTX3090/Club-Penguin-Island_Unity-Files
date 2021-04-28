using UnityEngine;

namespace Disney.Kelowna.Common.SEDFSM
{
	public class SetActiveGameObjectStateHandler : PassiveStateHandler
	{
		public GameObject[] Targets;
		public string[] ActiveStates;
	}
}
