using System;
using ClubPenguin.Core;
using Disney.Kelowna.Common.SEDFSM;

namespace ClubPenguin
{
	[Serializable]
	public class StateMachineLoaderSettings : AbstractAspectRatioSpecificSettings
	{
		public StateMachineLoader.Binding[] BindingOverrides;
	}
}
