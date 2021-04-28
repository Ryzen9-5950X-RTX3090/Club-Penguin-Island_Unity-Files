using UnityEngine;
using System;

namespace Disney.Kelowna.Common.SEDFSM
{
	public class StateMachineLoader : MonoBehaviour
	{
		[Serializable]
		public struct Binding
		{
			public string Name;
			public StateMachineDefinition Definition;
		}

		public Binding[] Bindings;
	}
}
