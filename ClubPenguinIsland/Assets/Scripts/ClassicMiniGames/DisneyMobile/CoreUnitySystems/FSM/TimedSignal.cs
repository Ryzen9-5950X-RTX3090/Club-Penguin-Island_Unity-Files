using UnityEngine;

namespace DisneyMobile.CoreUnitySystems.FSM
{
	public class TimedSignal : Signal
	{
		[SerializeField]
		private float mDurationSecs;
	}
}
