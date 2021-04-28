using System.Collections.Generic;

namespace DisneyMobile.CoreUnitySystems.FSM
{
	public class SignalGroupAny : Signal
	{
		public List<Signal> mSignals;
		public Signal mActiveSignal;
	}
}
