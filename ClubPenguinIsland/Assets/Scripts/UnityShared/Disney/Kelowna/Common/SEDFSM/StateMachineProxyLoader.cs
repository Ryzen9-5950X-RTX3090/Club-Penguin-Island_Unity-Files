using UnityEngine;
using System;

namespace Disney.Kelowna.Common.SEDFSM
{
	public class StateMachineProxyLoader : MonoBehaviour
	{
		[Serializable]
		public struct Binding
		{
			public string Target;
			public string TargetStateMachine;
		}

		public Binding[] Bindings;
	}
}
