using UnityEngine;

namespace Disney.Kelowna.Common.SEDFSM
{
	public class StateMachineDefinition : ScriptableObject
	{
		public bool PersistState;
		public ExternalEvent[] OnEnableEvents;
		public State[] States;
		public ExternalEvent[] OnDisableEvents;
	}
}
