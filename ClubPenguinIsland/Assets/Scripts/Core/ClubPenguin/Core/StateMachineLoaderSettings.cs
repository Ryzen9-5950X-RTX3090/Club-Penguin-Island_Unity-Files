using System;
using Disney.Kelowna.Common.SEDFSM;

namespace ClubPenguin.Core
{
	[Serializable]
	public class StateMachineLoaderSettings : AbstractPlatformSpecificSettings
	{
		public StateMachineLoader.Binding[] Bindings;
	}
}
