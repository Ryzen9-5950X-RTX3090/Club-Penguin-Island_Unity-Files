using UnityEngine;
using System.Collections.Generic;

namespace DisneyMobile.CoreUnitySystems.FSM
{
	public class State : MonoBehaviour
	{
		[SerializeField]
		protected List<Signal> mSignals;
	}
}
