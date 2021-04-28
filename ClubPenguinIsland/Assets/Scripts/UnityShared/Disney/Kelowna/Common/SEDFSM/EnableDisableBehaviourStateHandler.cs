using UnityEngine;

namespace Disney.Kelowna.Common.SEDFSM
{
	public class EnableDisableBehaviourStateHandler : PassiveStateHandler
	{
		public Behaviour[] Targets;
		public string[] EnabledStates;
	}
}
