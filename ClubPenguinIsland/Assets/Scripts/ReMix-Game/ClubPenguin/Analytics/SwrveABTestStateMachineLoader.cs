using Disney.Kelowna.Common.SEDFSM;
using System;

namespace ClubPenguin.Analytics
{
	public class SwrveABTestStateMachineLoader : StateMachineLoader
	{
		[Serializable]
		public struct SwrveABTest
		{
			public string Binding;
			public string Attribute;
			public StateMachineDefinition[] Definitions;
		}

		public SwrveABTest ABTest;
	}
}
